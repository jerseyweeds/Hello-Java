FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get install -y wget tar && \
    apt-get clean 

CMD mkdir /usr/src/app/ 

CMD cd /usr/src/app/ 

RUN wget  --no-verbose http://download-cdn.getsyncapp.com/stable/linux-arm/BitTorrent-Sync_arm.tar.gz \
	&& tar -xzfv ./BitTorrent-Sync_arm.tar.gz


RUN pwd

RUN ls ./

COPY run.sh /usr/src/app/run.sh

CMD /usr/src/app/run.sh
