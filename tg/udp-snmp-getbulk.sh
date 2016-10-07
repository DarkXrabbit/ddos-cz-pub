
SRCIP="X"
REFLECTOR="147.228.1.18 147.228.59.58"
DSTPORT="c16(161)"

TYPE=udp-snmp-getbulk
. ./lib.sh

REFLECTOR=$(echo $REFLECTOR| sed 's/\./,/g')

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
