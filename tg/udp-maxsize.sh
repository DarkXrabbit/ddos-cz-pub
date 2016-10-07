
SRCIP="X"
DSTIP="147.228.52.16"
SRCPORT="c16(6999)"
DSTPORT="c16(6999)"
DATALEN="1400"


TYPE=udp-maxsize
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
