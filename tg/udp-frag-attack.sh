

SRCIP="X"
DSTIP="147.228.52.16"


TYPE=udp-frag-attack
. ./lib.sh

rm -f ${TYPE}.o
cpp \
	-DDSTMAC="$RMAC" \
	-DSRCMAC="$MYMAC" \
	-DSRCIP="$SRCIP" \
	-DDSTIP="$DSTIP" \
	-DDSTPORT="$DSTPORT" \
	-DSRCPORT="$SRCPORT" \
${TYPE}.cfg -o - >> ${TYPE}.o
if [ $? != 0 ]; then
	echo "ERROR: cpp failed"
	exit 1
fi

. ./run.sh
