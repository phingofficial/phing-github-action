FROM composer:1.10

MAINTAINER Phing <info@phing.info>

LABEL version="3.0.0"
LABEL repository="https://github.com/phingofficial/phing-github-action"
LABEL homepage="https://github.com/phingofficial/phing-github-action"
LABEL author="Siad Ardroumli <siad.ardroumli@gmail.com>"

ARG PHING_VERSION=2.16.3

RUN composer global require --no-progress phing/phing-composer-configurator dev-master && \
    composer global require --no-progress phing/phing $PHING_VERSION

COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
