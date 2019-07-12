FROM ubuntu:18.04

RUN apt-get update \
	&& apt-get install vim -y \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/courses/shell
COPY .vimrc /root/.vimrc
COPY shell/ /usr/local/courses/shell/
RUN chmod u+x /usr/local/courses/shell/1_utility_postgres.sh