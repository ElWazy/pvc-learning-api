# syntax=docker/dockerfile:1
FROM python:3.10.12-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /pvc-learning
COPY requirements.txt /pvc-learning/

RUN pip install -r requirements.txt

COPY . /pvc-learning/