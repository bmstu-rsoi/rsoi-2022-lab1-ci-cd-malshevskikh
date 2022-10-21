# syntax=docker/dockerfile:1

FROM python:3.8.9

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /MaxFirstLab

COPY . /MaxFirstLab/

COPY requirements.txt /MaxFirstLab/requirements.txt

RUN pip install .

RUN pip install -r requirements.txt

#XPOSE $PORT

CMD ["sh", , "run.sh"]
#CMD [ "sh", "-c", "python3", "MaxFirstLab/manage.py runserver 0.0.0.0:$PORT"]
#CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT