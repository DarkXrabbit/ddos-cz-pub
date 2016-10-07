
SRCIP="147.228.63.223"
DSTIP="147.251.9.245"
SRCPORT="rnd(2)"
DSTPORT="c16(81)"
#749 + 28
DATALEN="777"

TYPE=udp-kiv2
. ./lib.sh

rm -f ${TYPE}.o
cpp \
	-DDSTMAC="$RMAC" \
	-DSRCMAC="$MYMAC" \
	-DSRCIP="$SRCIP" \
	-DDSTIP="$DSTIP" \
	-DDSTPORT="$DSTPORT" \
	-DSRCPORT="$SRCPORT" \
	-DDATALEN="$DATALEN" \
	-DTTL="$TTL" \
${TYPE}.cfg -o - >> ${TYPE}.o
if [ $? != 0 ]; then
	echo "ERROR: cpp failed"
	exit 1
fi

. ./run.sh
