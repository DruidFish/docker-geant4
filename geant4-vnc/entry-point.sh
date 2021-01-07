#!/bin/bash
set -e 

source /usr/local/geant4/bin/geant4.sh

rm -f /tmp/.X*lock
rm -f /tmp/.X11-unix/X*

vnc4server -geometry 1400x1000 -depth 24 2> /root/vncstart.log
LONGSTRING=`grep "desktop is" /root/vncstart.log`
export DISPLAY=${LONGSTRING:35:14}
openbox --replace > /root/openbox.log &

exec "$@"

