#!/bin/sh

#Generate animated title image
cd $(dirname $0)/..
mkdir -p tmp
rm -f tmp/*.png

openscad -o tmp/wp.png \
	 --camera 610,-400,0,10,30,0,3500 \
	 --projection p \
	 --imgsize 600,600 \
	 --colorscheme Sunset \
	 --animate 120 \
	 scad/WPMain.scad

#	 --camera 500,-400,1.5,10.30,0,3500 \
#	 --animate 60 \
#	 --imgsize 600,600 \

magick convert -delay 5 -loop 0 -dispose previous tmp/wp*.png img/wp.gif
