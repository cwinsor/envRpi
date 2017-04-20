#! /bin/bash
set -e
CURRENT_DIR="`pwd`"
HOME_DIR="/home/pi"
LOG_DIR="/home/pi"
DATE_TIME=`date +%F-%H%M%S`

cd $HOME_DIR
if ! [ -d ./machine ]; then
    echo "./machine does not exist - you need to untar the PredixMachineDebug image"
    echo "try tar xvzf PredixMachineDebug-16.4.1.....tar"
    exit 2
fi

./do_chmod.sh
machine/bin/predix/start_container.sh 2>&1 | tee $LOG_DIR/PredixMachineLog-$DATE_TIME.log
cd $CURRENT_DIR

