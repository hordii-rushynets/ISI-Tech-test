from django.urls import include, path
from rest_framework.routers import DefaultRouter
from rest_framework_nested.routers import NestedSimpleRouter

from isi_tech.api.v1.isi_thread.views import ThreadViewSet, MessageViewSet

router = DefaultRouter()
router.register(r"threads", ThreadViewSet, basename="thread")

threads_router = NestedSimpleRouter(router, r"threads", lookup="thread")
threads_router.register(r"messages", MessageViewSet, basename="thread-messages")

urlpatterns = [
    path("", include(router.urls)),
    path("", include(threads_router.urls)),
]