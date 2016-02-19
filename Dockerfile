FROM gamegear2004/mydockerimage:latest
MAINTAINER darius korzeniewski (Darius_Korzeniewski@web.de)

#Festlegen der Umgebungsvariablen
ENV http_proxy=http://193.174.119.246:80/
ENV https_proxy=https://193.174.119.246:443/

#Arbeitsbereich festlegen
WORKDIR /home/

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential
RUN apt-get install libcurl4-gnutls-dev -y
RUN apt-get install vim -y

