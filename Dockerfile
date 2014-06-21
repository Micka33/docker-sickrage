FROM       phusion/baseimage
MAINTAINER Mickael Cassy <twitter@mickaelcassy>
RUN        apt-get -y update
RUN        apt-get -y install python
RUN        apt-get -y install python-cheetah
RUN        apt-get -y install wget
RUN        apt-get -y install unzip
RUN        mkdir sickrage

WORKDIR    sickrage
RUN        wget https://github.com/echel0n/SickRage/archive/master.zip
RUN        unzip master.zip -d .
RUN        rm master.zip

EXPOSE     8081

ENTRYPOINT python /sickrage/SickRage-master/SickBeard.py >> /var/log/sickrage.log 2>&1
