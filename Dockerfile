# syntax=docker/dockerfile:1

FROM python:3.9.5-slim-buster
#FROM ubuntu

RUN apt update

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN apt install -y supervisor

COPY . .

CMD [ "python2", "/usr/bin/supervisord", "-n", "-c", "./supervisor_app.conf"]
#CMD [ "gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "myapp:app"]
