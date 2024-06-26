#!/bin/bash

source venv/bin/activate

cd /var/lib/jenkins/workspace/django-cicd/murder_garden

python manage.py makemigrations
python manage.py migrate

echo "Migrations done"

cd /var/lib/jenkins/workspace/django-cicd

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "Gunicorn has been started"

sudo systemctl status gunicorn
sudo systemctl restart gunicorn

