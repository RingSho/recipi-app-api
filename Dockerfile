FROM python:3.6-alpine
LABEL maintainer="RingSho"

ENV PYTHONBUFFERD 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
