FROM python:3.6

WORKDIR /home/app/

ENV RMQ_USERNAME=rabbit
ENV RMQ_HOST=178.154.201.156
ENV RMQ_QUEUE=urls
ENV RMQ_USERNAME=rabbituser
ENV RMQ_PASSWORD=rabbitpassword
ENV EXCLUDE_URLS='.*github.com'

ENV MONGO=178.154.201.156
ENV MONGO_PORT=27017
COPY . /home/app

RUN pip install -r requirements.txt -r requirements-test.txt
CMD python -u crawler/crawler.py https://vitkhab.github.io/search_engine_test_site/
