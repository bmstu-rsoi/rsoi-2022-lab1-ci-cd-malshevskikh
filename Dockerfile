# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

COPY . /MaxFirstLab

WORKDIR /MaxFirstLab

COPY requirements.txt /MaxFirstLab

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE $PORT

CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT