
SRCIP="X"
#REFLECTOR="195.113.144.228"
#REFLECTOR="195.113.144.205"
#REFLECTOR="158.196.149.9"
REFLECTOR="158.196.149.9 195.113.144.205 195.113.144.228"
DSTPORT="c16(53)"

#sh udp-dnssecq.sh -s 147.228.52.136 -r 158.196.149.9 -n10000 -T5 -g10


TYPE=udp-dnssecq
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
