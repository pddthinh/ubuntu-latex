FROM ubuntu:xenial
MAINTAINER DuyThinh <phandangduythinh@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's/main/main contrib non-free/g' /etc/apt/sources.list

RUN apt-get update -q

RUN apt-get install -qy --no-install-recommends \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
    make git

RUN apt-get install -qy --no-install-recommends \
	texmaker \
    texlive-full \
    fonts-lmodern \
    fonts-font-awesome \
    python-pygments gnuplot

RUN apt-get autoclean -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN useradd texmaker \
	&& mkdir /home/texmaker \
	&& chown texmaker:texmaker /home/texmaker

USER texmaker
WORKDIR /home/texmaker

ENTRYPOINT [ "texmaker" ]
