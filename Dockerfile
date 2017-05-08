FROM resin/rpi-raspbian:wheezy-2015-01-15

RUN apt-get update && apt-get install -y cron

COPY . /app

RUN echo "*1**** /app/job.sh" | crontab

CMD ["bash", "/app/start.sh"]

