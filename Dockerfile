FROM resin/raspberrypi3-debian

ENV INITSYSTEM on

RUN apt-get update && apt-get install -yq --no-install-recommends \
	cron \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN echo "*/3**** /app/job.sh" | crontab

CMD ["bash", "/app/start.sh"]

