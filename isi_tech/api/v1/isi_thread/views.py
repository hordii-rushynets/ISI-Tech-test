from django.shortcuts import get_object_or_404
from rest_framework import viewsets, status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework.request import Request
from rest_framework.response import Response

from isi_tech.apps.thread.models import Message, MessageReadStatus, Thread
from .serializers import ThreadSerializer, MessageSerializer
from datetime import datetime


class ThreadViewSet(viewsets.ModelViewSet):
    """
    ViewSet to handle threads.
    - Create a thread (if it exists, return it).
    - List threads for a user.
    - Delete a thread.
    """
    serializer_class = ThreadSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        """Retrieve threads where the authenticated user is a participant."""
        return Thread.objects.filter(participants=self.request.user)

    def destroy(self, request: Request, *args, **kwargs) -> Response:
        """
        Delete a thread only if the authenticated user is a participant.

        :param request: http request.

        :raises PermissionDenied: if a user is not the thread owner or a participant in it.
        """
        thread = self.get_object()
        user = request.user

        if request.user != thread.owner or user not in thread.participants.all():
            raise PermissionDenied()

        if thread.owner == request.user:
            thread.delete()
        elif request.user in thread.participants.all():
            thread.participants.remove(request.user)

        return Response(status=status.HTTP_204_NO_CONTENT)


class MessageViewSet(viewsets.ModelViewSet):
    """
    ViewSet for handling messages.
    - Create messages in a thread.
    - Retrieve messages of a thread.
    - Mark messages as read.
    - Get the count of unread messages.
    """
    serializer_class = MessageSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        """Retrieve messages in a thread that the user is a participant of."""
        thread_id = self.kwargs.get("thread_pk")
        return Message.objects.filter(thread__id=thread_id, thread__participants=self.request.user)

    def create(self, request: Request, thread_pk: int=None) -> Response:
        """
        Create a message in a thread.

        :param request: http request.

        :return: http response
        """
        thread = get_object_or_404(Thread, id=thread_pk, participants=request.user)
        serializer = self.get_serializer(data=request.data)
        if serializer.is_valid(raise_exception=True):
            serializer.save(thread=thread, sender=request.user)

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    def list(self, request: Request, *args, **kwargs) -> Response:
        """
        Read messages in a thread and mark messages as read in the thread.

        :param request: http request.

        :return: http response.
        """
        queryset = self.filter_queryset(self.get_queryset())
        read_statuses = MessageReadStatus.objects.filter(message__in=queryset, user=request.user, is_read=False)

        for status in read_statuses:
            status.read_at = datetime.now()
            status.is_read = True

        MessageReadStatus.objects.bulk_update(read_statuses, ['is_read', 'read_at'])

        return super().list(request, *args, **kwargs)       

    @action(detail=False, methods=["get"], permission_classes=[IsAuthenticated])
    def unread_count(self, request: Request, thread_pk=None) -> Response:
        """
        Get the count of unread messages for the authenticated user in a thread.
        """
        read_statuses = MessageReadStatus.objects.filter(
            message__thread__id=thread_pk, user=request.user, is_read=False
        ).count()

        return Response({"unread_count": read_statuses}, status=status.HTTP_200_OK)
