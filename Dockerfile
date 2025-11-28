FROM python:3.11-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY django_app/ ./django_app

WORKDIR /app/django_app

ENV DJANGO_SETTINGS_MODULE=app.settings

CMD ["gunicorn", "app.wsgi:application", "--bind", "0.0.0.0:8000"]
