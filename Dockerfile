FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get clean 
	

COPY . /usr/src/app

CMD /usr/src/app/run.sh
