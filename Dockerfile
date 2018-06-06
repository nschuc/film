FROM pytorch/pytorch:latest

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

WORKDIR /workspace/film

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

# -- Install dependencies:
RUN pip install pipenv && pipenv install --deploy --system

ADD . .
