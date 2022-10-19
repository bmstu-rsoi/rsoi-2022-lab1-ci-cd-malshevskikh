# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /MaxFirstLab

COPY requirements.txt /MaxFirstLab/

COPY Laba_1/ /MaxFirstLab/

COPY first_app/ /MaxFirstLab/

COPY manage.py /MaxFirstLab/

RUN pip3 install -r requirements.txt

EXPOSE $PORT

CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT