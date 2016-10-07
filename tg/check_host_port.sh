
HOST=$1
if [ -z $2 ]; then
	PORT="443"
else
	PORT=$2
fi

./check_tcp -H $HOST -p $PORT
ping -w 3 $HOST | tail -n2

