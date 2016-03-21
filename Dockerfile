FROM resin/rpi-raspbian:wheezy

RUN apt-get update && \
    apt-get clean 

CMD /usr/src/app/run.sh
