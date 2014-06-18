FROM       phusion/baseimage
MAINTAINER Mickael Cassy <twitter@mickaelcassy>
RUN        apt-get -y update
#RUN        apt-get -y install apt-transport-https
#RUN       apt-get -y install libssl1.0.0 ssl-cert openssl
RUN        apt-get -y install python
RUN        apt-get -y install python-cheetah
RUN        apt-get -y install wget
RUN        apt-get -y install unzip
RUN        mkdir sickrage

WORKDIR    sickrage
RUN        wget https://github.com/echel0n/SickRage/archive/master.zip
RUN        unzip master.zip -d .
RUN        rm master.zip

WORKDIR    /etc/service
RUN        mkdir sickrage
ADD        sickrage.sh /etc/service/sickrage/run
RUN        chmod +x /etc/service/sickrage/run
RUN        echo "\nrunsvdir /etc/service &\n" >>  /etc/rc.local
EXPOSE     8081
