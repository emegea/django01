#!/usr/bin/env bash
# exit on error
set -o errexit


pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py createsuperuser

python manage.py migrate
# Variables de entorno para crear un superusuario
export DJANGO_SUPERUSER_USERNAME=webmaster
export DJANGO_SUPERUSER_EMAIL=martosproject@gmail.com
export DJANGO_SUPERUSER_PASSWORD=1234@admin

# Crear el superusuario no interactivamente
python manage.py createsuperuser --no-input