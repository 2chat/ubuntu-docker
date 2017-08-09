FROM ubuntu:xenial
LABEL maintainer="roma.gordeev@gmail.com"

# update and upgrade packages
RUN apt-get update \
  && apt-get -y dist-upgrade \
  && apt-get clean \
# install locales
  && apt-get install -y locales \
# install wget build-essential and software-properties-common
  && apt-get install -y --no-install-recommends build-essential \
  wget software-properties-common

## add russian UTF-8 locale and set LANG and LC_ALL env variables
RUN locale-gen ru_RU.UTF-8
ENV LANG       ru_RU.UTF-8
ENV LC_ALL     ru_RU.UTF-8