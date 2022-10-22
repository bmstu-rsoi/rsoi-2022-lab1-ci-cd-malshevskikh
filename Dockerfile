# syntax=docker/dockerfile:1

FROM python:3.8.9

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PORT=8000

WORKDIR /MaxFirstLab

COPY . /MaxFirstLab/

COPY requirements.txt /MaxFirstLab/requirements.txt

RUN pip install -r requirements.txt

EXPOSE $PORT

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#CMD [ "sh", "-c", "python3", "MaxFirstLab/manage.py runserver 0.0.0.0:$PORT"]

#CMD python3 MaxFirstLab/manage.py runserver 0.0.0.0:$PORT