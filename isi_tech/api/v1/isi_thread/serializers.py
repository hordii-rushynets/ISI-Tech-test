from datetime import datetime
from typing import OrderedDict

from django.contrib.auth import get_user_model
from django.db.models import Count
from rest_framework import serializers

from isi_tech.apps.thread.models import Message, MessageReadStatus, Thread

User = get_user_model()


class ThreadSerializer(serializers.ModelSerializer):
    """Thread's serializers."""
    participants = serializers.PrimaryKeyRelatedField(
        queryset=User.objects.all(), many=True
    )

    class Meta:
        model = Thread
        fields = ['id', 'participants', 'created', 'updated']

    def create(self, validated_data: OrderedDict) -> Thread:
        """
        Create a thread if it's not exists for specific list of users.
        
        :param validated_data: validated data.

        :return thread: object of Thread.
        """
        participants = validated_data.get('participants')

        thread = Thread.objects.filter(participants__in=participants).annotate(
            num_participants=Count("participants")
        ).filter(num_participants=len(participants)).first()

        if thread:
            return thread

        request = self.context.get('request')

        thread = Thread.objects.create(owner=request.user)
        thread.participants.set(participants)
        thread.save()

        return thread


class MessageSerializer(serializers.ModelSerializer):
    """Message serializer."""
    class Meta:
        model = Message
        fields = ['id', 'text', 'created']
    
    def create(self, validated_data: OrderedDict) -> Message:
        """
        Create a message and create MessageReadStatus(-is) for each participant of this thread.

        :param validated_data: validated data.

        :return message: object of Message.
        """
        message = super().create(validated_data)
        request = self.context.get('request')

        MessageReadStatus.objects.get_or_create(message=message, user=request.user, read_at=datetime.now())

        read_statuses = [
            MessageReadStatus(message=message, user=participant, is_read=False)
            for participant in message.thread.participants.all()
        ]

        MessageReadStatus.objects.bulk_create(read_statuses, ignore_conflicts=True)

        return message
