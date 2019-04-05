FROM python:3.7-stretch

RUN pip install pipenv

WORKDIR /usr/local/django-docker-celery/
COPY Pipfile Pipfile.lock ./

RUN pipenv install --deploy --system
