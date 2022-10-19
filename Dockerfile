# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /MaxFirstLab

COPY requirements.txt /MaxFirstLab/

RUN pip install .

RUN pip3 install -r requirements.txt

COPY Laba_1/ /MaxFirstLab/

COPY first_app/ /MaxFirstLab/

COPY manage.py /MaxFirstLab/

CMD [ "python3", "./manage.py", "runserver", "0.0.0.0:$PORT"]