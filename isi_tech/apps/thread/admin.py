from django.contrib import admin

from .models import Message, Thread


class MessageInline(admin.TabularInline):
    """Inline display of messages within a thread."""
    model = Message
    extra = 0
    readonly_fields = ('sender', 'text', 'created') 


class ThreadAdmin(admin.ModelAdmin):
    """Admin for Thread model."""
    list_display = ('id', 'get_participants', 'created', 'updated')
    search_fields = ('participants__username',)
    filter_horizontal = ('participants',)
    inlines = [MessageInline]

    def get_participants(self, obj: Thread) -> str:
        """
        Returns a comma-separated list of participant usernames.
        
        :param obj: thread object.

        :return: string representation of the list of thread participants.
        """
        return ", ".join(obj.participants.values_list('username', flat=True))

    get_participants.short_description = 'Participants'

admin.site.register(Thread, ThreadAdmin)
