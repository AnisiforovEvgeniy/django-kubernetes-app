import socket
from django.http import HttpResponse


def index(request):
    hostname = socket.gethostname()
    return HttpResponse(f"Hello from {hostname}")
