FROM python:3

RUN apt-get -y update &&\
    apt-get -y install openjdk-8-jre && \
    apt-get clean && \
    useradd -u 1000 admin && \
    chmod 777 -R /home
