FROM rabbitmq:3.6.5-management

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
