FROM docker:latest

COPY crontab /etc/crontabs/root

CMD ["crond", "-f", "-d", "8"]
