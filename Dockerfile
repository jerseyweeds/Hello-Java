FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get install -y wget tar && \
    apt-get clean 

RUN pwd

RUN ls -l

RUN wget -q http://download-cdn.getsyncapp.com/stable/linux-arm/BitTorrent-Sync_arm.tar.gz 

RUN pwd

RUN ls -l

RUN tar -xzfv BitTorrent-Sync_arm.tar.gz

COPY . /usr/src/app/

COPY run.sh /usr/src/app/run.sh

CMD /usr/src/app/run.sh
