FROM gamegear2004/mydockerimage:latest
MAINTAINER darius korzeniewski (Darius_Korzeniewski@web.de)

#Festlegen der Umgebungsvariablen
ENV http_proxy=http://193.174.119.246:80/
ENV https_proxy=https://193.174.119.246:80/

#Arbeitsbereich festlegen
WORKDIR /home/

# Ubuntu auf den aktuellen Stand bringen
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential
RUN apt-get install wget -y
RUN apt-get install libcurl4-gnutls-dev -y


# Terminal Editor Vim installieren
RUN apt-get install vim -y

CMD lsb_release -a

# Swift nach installieren
RUN apt-get install clang libicu-dev -y
RUN wget https://swift.org/builds/development/ubuntu1404/swift-DEVELOPMENT-SNAPSHOT-2016-02-25-a/swift-DEVELOPMENT-SNAPSHOT-2016-02-25-a-ubuntu14.04.tar.gz
RUN tar xzf swift-DEVELOPMENT-SNAPSHOT-2016-02-25-a-ubuntu14.04.tar.gz
RUN export PATH=$(pwd)/swift-DEVELOPMENT-SNAPSHOT-2016-02-25-a-ubuntu14.04/usr/bin/:"${PATH}"
