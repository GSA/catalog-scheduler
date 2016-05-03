FROM docker:latest

COPY crontab /etc/crontabs/root

# install docker-compose
RUN apk update && \
    apk add py-pip && \
    pip install docker-compose

CMD ["crond", "-f", "-d", "8"]
