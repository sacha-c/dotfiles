#!/bin/sh

LOG="/tmp/piano_control.log"

if  [ $1 = "start" ]; then
    echo "$(date) starting piano" >> $LOG

    su sacha -c "DISPLAY=:0 nohup qjackctl -a /usr/local/lib/Impactgx61.xml -s &"
    su sacha -c "DISPLAY=:0 nohup qsynth -m alsa_seq -a jack &"

elif [ $1 = "stop" ]; then
    echo "$(date) stopping piano" >> $LOG

    killall qjackctl
    killall qsynth

else
    echo "$(date) unrecognized command" >> $LOG
fi
