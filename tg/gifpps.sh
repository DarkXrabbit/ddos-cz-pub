#!/bin/bash

cleanup() {
	CHLDS=$(ps --ppid $PID_IF -o pid h)
	kill $PID_IF 2>/dev/null
        kill $CHLDS 2>/dev/null

	kill $PID_PREPROCES 2>/dev/null
	exit 0
}

trap cleanup INT QUIT EXIT

. ./lib.sh
DEV=$(/sbin/route -n | grep "^0.0.0.0" | rev | awk '{print $1}' | rev | head -n1)

rm /tmp/ifpps.data
(while(true); do ./ifpps.$(uname -m) -d $DEV -c -l >> /tmp/ifpps.data; done) &
export PID_IF=$!

(while(true); do 
	tail -n120 /tmp/ifpps.data > /tmp/ifpps.data.graph.new; mv /tmp/ifpps.data.graph.new /tmp/ifpps.data.graph; 
	sleep 1; 
done) &
export PID_PREPROCES=$!

sleep 2

head /tmp/ifpps.data
gnuplot gifpps.gnp 1>>/tmp/ifpps.gnp.log 2>>/tmp/ifpps.gnp.log

cleanup()

