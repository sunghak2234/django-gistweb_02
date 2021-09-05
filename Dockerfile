FROM python:3.9.0

WORKDIR /home/

RUN echo "testing"

RUN git clone https://github.com/sunghak2234/django-gistweb_02.git

WORKDIR /home/django-gistweb_02/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

RUN pip install bootstrap4

RUN pip install django-bootstrap4


RUN echo "SECRET_KEY=django-insecure-ymwh)3@pbsvbi3ak-1vv_ze%u^b$#dudl0qq^4j(#icb5=8-6" > .env

RUN python manage.py collectstatic


EXPOSE 8000

CMD ["bash", "-c",   "python manage.py migrate --settings=gistweb_02.settings.deploy && gunicorn gistweb_02.wsgi --env DJANGO_SETTINGS_MODULE=gistweb_02.settings.deploy --bind 0.0.0.0:8000"]



