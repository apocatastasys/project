FROM rabbitmq

# Define environment variables.
ENV RABBITMQ_USER rabbituser
ENV RABBITMQ_PASSWORD rabbitpassword
ENV RABBITMQ_NODENAME rabbit

ADD rabbitmq.conf /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/
ADD init.sh /init.sh
EXPOSE 15672

# Define default command
RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]
CMD ["/init.sh"]
