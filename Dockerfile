FROM ubuntu:latest

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update Ubuntu.
RUN apt-get update
RUN apt-get install -y apt-utils git build-essential perl g++ python-dev autotools-dev libicu-dev libbz2-dev libboost-all-dev

RUN apt-get update && apt-get -y upgrade

#Install Gargantua aligment tool
RUN git clone https://github.com/ndnlp/Gargantua.git
RUN cd /Gargantua/src && make
