FROM composer:1.10

LABEL version="2.0.0"
LABEL repository="https://github.com/phingofficial/phing-github-action"
LABEL homepage="https://github.com/phingofficial/phing-github-action"
LABEL maintainer="Siad Ardroumli <siad.ardroumli@gmail.com>"

RUN composer global require --no-progress phing/phing 2.*
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
