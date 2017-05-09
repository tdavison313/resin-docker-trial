FROM resin/raspberrypi3-debian

ENV INITSYSTEM on

RUN apt-get update && apt-get install -yq --no-install-recommends \
	cron \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN echo "*/3 * * * * usr/src/app/job.sh" | crontab

CMD ["bash", "start.sh"]

