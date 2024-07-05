#!/usr/bin/env bash
# exit on error
set -o errexit


pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

# Crear superusuario solo si las variables de entorno están configuradas
if [ "$CREATE_SUPERUSER" == "True" ]; then
    python crear_superusuario.py
fi