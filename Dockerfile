# This is a Dockerfile for See5/C5.0

FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc wget make csh

RUN apt-get autoremove -y

RUN wget https://www.rulequest.com/GPL/C50.tgz

RUN tar zxvf C50.tgz

RUN rm -fr C50.tgz

RUN make
