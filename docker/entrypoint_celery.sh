#!/bin/sh

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input --clear -v 0

exec "$@"