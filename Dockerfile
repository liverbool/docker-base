FROM debian:wheezy

MAINTAINER  Liverbool "nukboon@gmail.com"

#ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LC_ALL=en_US.UTF-8

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache
RUN timedatectl set-timezone Asia/Bangkok

RUN apt-get update -y --fix-missing
#RUN apt-get install supervisor -y
