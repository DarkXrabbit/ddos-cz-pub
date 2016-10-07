
BUILD=$(hostname -s)
export LD_LIBRARY_PATH="./lib-$(uname -m)"
export LANG=C
if [ -x "./trafgen.$BUILD" ]; then
	TBIN="./trafgen.$BUILD"
else
	TBIN="./trafgen"
fi

DEV=$(/sbin/route -n | grep "^0.0.0.0" | rev | awk '{print $1}' | rev | head -n1)

if [ -z $TTL ]; then
	TTL=64
fi
if [ -z $NUM ]; then
	NUM=100
fi
if [ -z $GAP ]; then
	GAP=0
fi
if [ -z $CPUS ]; then
	CPUS=1
fi


usage() { echo "Usage: $0 [-s srcip|X|Y] [-d dstip] [-S sport] [-D dport] [-t ttl] [-n num] [-l datalen] [-r reflector] [-T time_sec] [-g gap_usec] [-o outdev] [-c cpus]" 1>&2; exit 1; }
while getopts "s:d:S:D:t:n:l:r:T:g:o:c:" o; do
    case "${o}" in
        s)
            SRCIP=${OPTARG}
            ;;
        d)
            DSTIP=${OPTARG}
            ;;
	S)
            SRCPORT=${OPTARG}
       	    echo $SRCPORT | egrep "^(c16|d?rnd)" 1>/dev/null
	    if [  $? != 0 ]; then echo "ERROR: srcport"; exit 1; fi
	    ;;
	D)
            DSTPORT=${OPTARG}
	    echo $DSTPORT | egrep "^(c16|d?rnd)" 1>/dev/null
	    if [  $? != 0 ]; then echo "ERROR: dstport"; exit 1; fi
            ;;
	l)
            DATALEN=${OPTARG}
            ;;
	t)
            TTL=${OPTARG}
            ;;
	T)
            TIME=${OPTARG}
            ;;
	g)
            GAP=${OPTARG}
            ;;
	r)
            REFLECTOR=${OPTARG}
            ;;
	o)
            DEV=${OPTARG}
            ;;
	c)
            CPUS=${OPTARG}
            ;;
	n)
            NUM=${OPTARG}
	    if [ $NUM -gt 50000000 ]; then
		echo "ERROR: maxnum"
	    	usage
	    fi
            ;;
        *)
	    usage
	;;
    esac
done
shift $((OPTIND-1))

#multi interface code
#get route, router and router mac
#note when generating packets with many nics there has to be a G on every interface, perhaps with higher metrics
# route add default gw ROUTER dev ethX metric HIGH
DR=$(/sbin/route -n | grep "$DEV" | grep "G" | awk '{print $2}')
RMAC=$(arp -an | grep "$DR)" | awk '{print $4}' | sed 's/:/,0x/g' | sed 's/^/0x/')
if [ -z RMAC ]; then
	ping -c1 -w1 $DR
	RMAC=$(arp -an | grep "$DR)" | awk '{print $4}' | sed 's/:/,0x/g' | sed 's/^/0x/')
fi
# get my info
MYMAC=$(/sbin/ifconfig | grep -m1 $DEV | awk '{print $5}' | sed 's/:/,0x/g' | sed 's/^/0x/')
MYIP=$(/sbin/ifconfig | grep -m1 $DEV -A1 | tail -1 | awk '{print $2}' | sed 's/addr://' | sed 's/\./,/g')

echo "DEBUG: dev=$DEV, dr=$DR, rmac=$RMAC, mymac=$MYMAC, myip=$MYIP"
if [ -z "$DEV" -o -z "$DR" -o -z "$RMAC" -o -z "$MYMAC" -o -z "$MYIP" ]; then
	echo "ERROR: missing runtime networking parameter. exit."
	exit 1
fi



if [ "$SRCIP" = "X" ]; then
	SRCIP=$MYIP
fi
if [ "$SRCIP" = "Y" ]; then
	SRCIP=$(echo $MYIP | awk -F',' '{print $1","$2","$3",drnd(1)"}' )
fi
if [ "$SRCIP" = "Z" ]; then
	SRCIP=$(echo $MYIP | awk -F',' '{print $1","$2","$3",rnd(1)"}' )
fi



SRCIP=$(echo $SRCIP | sed 's/\./,/g')
DSTIP=$(echo $DSTIP | sed 's/\./,/g')

if [ -z $TIME ]; then
	STOPTIME=$(date +%s)
else
	STOPTIME=$(( $(date +%s) + $TIME ))
fi
