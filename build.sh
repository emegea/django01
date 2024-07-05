#!/usr/bin/env bash
# exit on error
set -o errexit


pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py createsuperuser
webmaster
martosproject@gmail.com
1234@admin
python manage.py migrate