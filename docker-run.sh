#! /bin/sh

docker run -it --rm=true \
		-e USER=$USER -e USERID=$UID \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-e DISPLAY=unix$DISPLAY \
		--device /dev/dri \
		-v $HOME:/home/texmaker \
		--name ubuntu-latex pddthinh/ubuntu-latex
