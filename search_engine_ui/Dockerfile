FROM python:2

WORKDIR /home/app/ui

ENV RMQ_USERNAME=rabbit
ENV RMQ_HOST=178.154.201.156

ENV MONGO=178.154.201.156
ENV MONGO_PORT=27017
#ENV MONGODB_VERSION=4.0
#ENV DOCKER_USERNAME=appuser
EXPOSE 8000
COPY . /home/app

#RUN cd ../ && pip install -r requirements.txt -r requirements-test.txt
#CMD FLASK_APP=ui.py gunicorn ui:app -b 0.0.0.0
