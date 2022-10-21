# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

COPY requirements.txt /MaxFirstLab/requirements.txt

WORKDIR /MaxFirstLab

RUN pip install -r requirements.txt

COPY . /MaxFirstLab

EXPOSE $PORT

CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT