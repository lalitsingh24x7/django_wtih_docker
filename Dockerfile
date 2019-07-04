FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN apt update
RUN pip install -r requirements.txt
WORKDIR /usr/src/app