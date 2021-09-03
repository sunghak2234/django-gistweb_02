FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/sunghak2234/django-gistweb_02.git

WORKDIR /home/django-gistweb_02/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-ymwh)3@pbsvbi3ak-1vv_ze%u^b$#dudl0qq^4j(#icb5=8-6" > .env

RUN python manage.py migrate
pip install gunicon
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


