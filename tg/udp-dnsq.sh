
SRCIP="X"
#REFLECTOR="147.228.3.3"
#REFLECTOR="147.228.52.11"
#REFLECTOR="147.228.63.6"
#REFLECTOR="147.228.1.10"
REFLECTOR="147.228.1.10 147.228.3.3 147.228.63.6"
DSTPORT="c16(53)"


TYPE=udp-dnsq
. ./lib.sh

REFLECTOR=$(echo $REFLECTOR | sed 's/\./,/g')

rm ${TYPE}.o
for all in $REFLECTOR; do
	cpp \
		-DDSTMAC="$RMAC" \
		-DSRCMAC="$MYMAC" \
		-DSRCIP="$SRCIP" \
		-DDSTIP="$all" \
		-DDSTPORT="$DSTPORT" \
	${TYPE}.cfg -o - >> ${TYPE}.o
	if [ $? != 0 ]; then
		echo "ERROR: cpp failed"
		exit 1
	fi
done

. ./run.sh
