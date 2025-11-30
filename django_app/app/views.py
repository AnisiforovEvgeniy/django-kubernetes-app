import socket
from django.http import HttpResponse

def index(request):
    hostname = socket.gethostname()
    version_text = "Авто-деплой работает! Версия: 2"
    return HttpResponse(f"<h2>{version_text}</h2><p>Served by pod: {hostname}</p>")

