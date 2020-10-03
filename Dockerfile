FROM composer:1.10

LABEL version="2.0.0"

RUN composer global require --no-progress phing/phing 2.*
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
