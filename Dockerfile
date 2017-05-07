FROM resin/rpi-raspbian:wheezy-2015-01-15

RUN apt-get update && apt-get install -y python

COPY . /app

CMD ["python", "/app/hello.py"]

