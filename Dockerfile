# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /MaxFirstLab

COPY . /MaxFirstLab/

RUN pip install -r requirements.txt

EXPOSE $PORT

CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT