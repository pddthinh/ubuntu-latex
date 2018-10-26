#! /bin/bash

config=""

unameOut="$(uname -s)"
case "$unameOut" in
	Linux*)
		x11=" -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \\"
		config="$config $x11 --device /dev/dri "
	;;

	Darwin*)
		# allow access from localhost
		xhost + 127.0.0.1

		x11="-e DISPLAY=docker.for.mac.localhost:0"
		config="$config $x11"
	;;

	*)
		echo "Not supported OS!"
		exit 1
	;;
esac

docker run -it --rm=true \
		-e USER=$USER -e USERID=$UID \
		-v $HOME:/home/texmaker \
		$config \
		--name ubuntu-latex pddthinh/ubuntu-latex
