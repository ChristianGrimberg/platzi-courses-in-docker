FROM ubuntu:18.10

RUN apt-get update \
	&& apt-get install vim -y \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/courses/shell
COPY .vimrc /root/.vimrc

CMD "/bin/bash"