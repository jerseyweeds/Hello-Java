FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get install -y wget tar && \
    apt-get clean 

RUN cd /usr/src/app/

RUN wget --no-progress http://download-cdn.getsyncapp.com/stable/linux-arm/BitTorrent-Sync_arm.tar.gz 

RUN pwd

RUN ls ./

RUN tar -xzfv ./BitTorrent-Sync_arm.tar.gz

CMD /usr/src/app/run.sh
