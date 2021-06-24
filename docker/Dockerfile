FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="2chcoin Developers <dev@2chcoin.org>"
LABEL description="Dockerised 2chcoinCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /2chcoin

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} 2chcoin
RUN useradd -u ${USER_ID} -g 2chcoin -s /bin/bash -m -d /2chcoin 2chcoin
RUN mkdir /2chcoin/.2chcoincore
RUN chown 2chcoin:2chcoin -R /2chcoin

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER 2chcoin

VOLUME ["/2chcoin"]

EXPOSE 9998 9999 19998 19999

WORKDIR /2chcoin
