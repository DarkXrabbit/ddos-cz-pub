#!/bin/bash
#https://gist.github.com/joemiller/


if [ -z "$1" ]; then
	echo
	echo usage: $0 network-interface
	echo
	echo e.g. $0 eth0
	echo
	echo shows packets-per-second
	exit
fi

IF=$1
while true
do
        R1=`cat /sys/class/net/$1/statistics/rx_packets`
        T1=`cat /sys/class/net/$1/statistics/tx_packets`
        R1E=`cat /sys/class/net/$1/statistics/rx_missed_errors`
        T1E=`cat /sys/class/net/$1/statistics/tx_errors`
        sleep 1
        R2=`cat /sys/class/net/$1/statistics/rx_packets`
        T2=`cat /sys/class/net/$1/statistics/tx_packets`
        R2E=`cat /sys/class/net/$1/statistics/rx_missed_errors`
        T2E=`cat /sys/class/net/$1/statistics/tx_errors`
        TXPPS=`expr $T2 - $T1`
        RXPPS=`expr $R2 - $R1`
        TXEPPS=`expr $T2E - $T1E`
        RXEPPS=`expr $R2E - $R1E`
        echo "$1: tx $TXPPS pkts/s rx $RXPPS pkts/s txe $TXEPPS pkts/s rxe $RXEPPS pkts/s"
done
