FROM bitriseio/docker-bitrise-base:latest

MAINTAINER Vincent Saluzzo <vincent.saluzzo@itelios.com>

LABEL Description="This image was provided by itelios to Bitrise user who want a NodeJS 4 LTS context in builds (no Android SDK here)"

RUN cd ~ && wget https://nodejs.org/dist/v4.2.3/node-v4.2.3-linux-x64.tar.gz
RUN cd ~ && tar --strip-components 1 -xzvf node-v4.2.3-linux-x64.tar.gz -C /usr/local


CMD node -v
