FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get install -y wget tar && \
    apt-get clean 

RUN wget --progress=dot  http://download-cdn.getsyncapp.com/stable/linux-arm/BitTorrent-Sync_arm.tar.gz 
RUN tar -xzfv ./BitTorrent-Sync_arm.tar.gz

COPY . /usr/src/app

CMD /usr/src/app/run.sh
