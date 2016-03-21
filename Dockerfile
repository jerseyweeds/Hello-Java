FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get install -y wget tar && \
    apt-get clean 

CMD ls -l

RUN wget http://download-cdn.getsyncapp.com/stable/linux-arm/BitTorrent-Sync_arm.tar.gz \
    && tar -xzfv BitTorrent-Sync_arm.tar.gz

COPY . /usr/src/app/

COPY run.sh /usr/src/app/run.sh

CMD /usr/src/app/run.sh
