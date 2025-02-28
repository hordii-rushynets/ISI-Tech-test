from django.urls import path, include

urlpatterns = [
    path('', include('isi_tech.api.v1.isi_thread.urls')),
]
