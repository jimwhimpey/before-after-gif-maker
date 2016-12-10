#!/bin/bash

convert before.png \
	-colorspace sRGB \
	-fill 'rgba(0,0,0,0.8)' -draw 'rectangle 10,10,100,42' \
	-fill 'rgba(255,255,255, 0.7)' -font CourierNew -pointsize 20 -annotate +20+32 'Before' \
	labelled-before.gif \

convert after.png \
	-colorspace sRGB \
	-fill 'rgba(0,0,0,0.8)' -draw 'rectangle 10,10,90,42' \
	-fill 'rgba(255,255,255, 0.7)' -font CourierNew -pointsize 20 -annotate +20+32 'After' \
	labelled-after.gif \

gifsicle --delay=150 --loop --colors 256 --merge labelled-before.gif labelled-after.gif -o beforeafter.gif \

rm labelled-before.gif labelled-after.gif

open beforeafter.gif -a safari