#! /bin/bash
set -e
CURRENT_DIR="`pwd`"
HOME_DIR="/home/pi"
DATE_TIME=`date +%F-%H%M%S`

cd $HOME_DIR
chmod -R 777 appdata/ bin/ configuration/ installations/ license/ logs/ machine/ README.txt security/ utilities/ yeti/

cd $CURRENT_DIR



