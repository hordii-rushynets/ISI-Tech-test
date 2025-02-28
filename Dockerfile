FROM --platform=linux/amd64 python:3.9-slim-buster
ENV PYTHONUNBUFFERED=1
COPY ./requirements.txt /requirements.txt

RUN apt-get update; \
    apt-get install -y gettext \
        build-essential \
        libssl-dev \
        libffi-dev \
        python3-dev \
        libxml2-dev \
        libxslt1-dev \
        libmagic-dev \
        gcc \
        libc-dev;  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -r /requirements.txt

WORKDIR /app
COPY . /app

EXPOSE 8000
