#!/bin/bash

# 引数の値を変数に代入する
NAME="sample"
FROM=0
UPTO=1000
ASPECT_RATIO=1.5
SHRINK_RATIO=0.99
FILESIZE_HEIGHT=1000
START_X=-2.1503724603
START_Y=1.6748017795
CX=-0.3
CY=-0.63
DEFAULT_WIDTH=4
DEFAULT_HEIGHT=3

# make clean && make コマンドを実行する
make clean && make

rm -rf ./work/$NAME

# make run コマンドを実行する
make run ARGS="-name $NAME -from $FROM -upto $UPTO -aspect-ratio $ASPECT_RATIO -shrink-ratio $SHRINK_RATIO -filesize-height $FILESIZE_HEIGHT -start-x $START_X -start-y $START_Y -cx $CX -cy $CY -default-width $DEFAULT_WIDTH -default-height $DEFAULT_HEIGHT"

ffmpeg -r 30 -i ./work/$NAME/%08d.png -vcodec libx264 -pix_fmt yuv420p -r 60 ./dist/video.mp4
