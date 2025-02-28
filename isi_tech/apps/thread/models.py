from django.contrib.auth import get_user_model
from django.db import models

User = get_user_model()


class Thread(models.Model):
    """Represents a conversation between multiple participants."""
    participants = models.ManyToManyField(User, related_name="threads")
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Thread {self.id} - {', '.join(self.participants.values_list('username', flat=True))}"


class Message(models.Model):
    """Represents a message within a thread."""
    thread = models.ForeignKey(Thread, on_delete=models.CASCADE, related_name="messages")
    sender = models.ForeignKey(User, on_delete=models.CASCADE, related_name="sent_messages")
    text = models.TextField()
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Message {self.id} from {self.sender.username}"


class MessageReadStatus(models.Model):
    """Tracks which participants have read a specific message."""
    message = models.ForeignKey(Message, on_delete=models.CASCADE, related_name="read_statuses")
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="read_messages")
    read_at = models.DateTimeField(null=True, blank=True)
    is_read = models.BooleanField(default=True)

    class Meta:
        unique_together = ("message", "user")

    def __str__(self):
        return f"{self.user.username} read message {self.message.id} at {self.read_at}"
