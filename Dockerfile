FROM python:3

RUN apt-get -y update &&\
    apt-get install -y software-properties-common debconf-utils &&\
    add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" &&\
    apt-get -y update &&\
    echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections &&\
    apt-get -y install oracle-java8-installer
