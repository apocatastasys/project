FROM rabbitmq

# Define environment variables.
ENV RABBITMQ_USER rabbituser
ENV RABBITMQ_PASSWORD rabbitpassword
ENV RABBITMQ_NODENAME rabbit
ENV RMQ_HOST=0.0.0.0

ADD rabbitmq.conf /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/
ADD init.sh /init.sh
EXPOSE 5672

# Define default command
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]
CMD ["/init.sh"]
