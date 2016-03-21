FROM resin/rpi-raspbian:wheezy

RUN apt-get install wget && \
    apt-get update && \
    apt-get clean 

RUN wget http://btsync.s3-website-us-east-1.amazonaws.com/btsync_arm.tar.gz

COPY . /usr/src/app

CMD /usr/src/app/run.sh
