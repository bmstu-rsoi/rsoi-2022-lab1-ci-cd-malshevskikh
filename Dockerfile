# syntax=docker/dockerfile:1

FROM python:3.8.9

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

#COPY requirements.txt /MaxFirstLab/requirements.txt

WORKDIR /MaxFirstLab

COPY requirements.txt /MaxFirstLab/requirements.txt

RUN pip install -r requirements.txt

COPY . /MaxFirstLab

CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT