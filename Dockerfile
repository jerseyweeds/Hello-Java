FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get install -y wget tar && \
    apt-get clean 

RUN wget http://btsync.s3-website-us-east-1.amazonaws.com/btsync_arm.tar.gz \
    && tar -xfv btsync_arm.tar.gz

COPY . /usr/src/app

CMD /usr/src/app/run.sh
