# 5D4A LAB - emdel - 25/08/2011
#
#-A INPUT -p udp -m udp --dport 53 -j NFQUEUE --queue-num 0
#
import uuid
import random
import logging

l=logging.getLogger("scapy.runtime")
l.setLevel(49)

import os,sys,nfqueue,socket
from scapy.all import *

conf.verbose = 0
conf.L3socket = L3RawSocket

def send_echo_reply(pkt):
		ip = IP()
		icmp = ICMP()
		ip.src = pkt[IP].dst 
		ip.dst = pkt[IP].src
		icmp.type = 0
		icmp.code = 0
		icmp.id = pkt[ICMP].id
		icmp.seq = pkt[ICMP].seq
		print "Sending back an echo reply to %s" % ip.dst
		data = pkt[ICMP].payload
		send(ip/icmp/data, verbose=0)


def fake_dns_reply1(pkt, qname):
		ip = IP()
		udp = UDP()
		ip.src = pkt[IP].dst
		ip.dst = pkt[IP].src
		udp.sport = pkt[UDP].dport
		udp.dport = pkt[UDP].sport

		solved_ip = "31.33.7.31"
		qd = pkt[UDP].payload
		dns = DNS(id = qd.id, qr = 1, qdcount = 1, ancount = 1, arcount = 1, nscount = 1, rcode = 0)
		dns.qd = qd[DNSQR]
		dns.an = DNSRR(rrname = qname, ttl = 257540, rdlen = 4, rdata = solved_ip)
		dns.ns = DNSRR(rrname = qname, ttl = 257540, rdlen = 4, rdata = solved_ip)
		dns.ar = DNSRR(rrname = qname, ttl = 257540, rdlen = 4, rdata = solved_ip)
		print "Sending the fake DNS reply to %s:%s" % (ip.dst, udp.dport)
		send(ip/udp/dns)

def fake_dns_reply(pkt, qname):
	redirect_to = str(uuid.uuid4().get_hex().upper()[0:20])+"."+pkt[DNS].qd.qname
	spoofed_pkt = IP(dst=pkt[IP].src, src=pkt[IP].dst)/\
                      UDP(dport=pkt[UDP].sport, sport=pkt[UDP].dport)/\
                      DNS(id=pkt[DNS].id, qd=pkt[DNS].qd, aa = 1, qr=1, \
                      an=DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=redirect_to))
        send(spoofed_pkt, verbose=0)
        #print 'Sent:', spoofed_pkt.summary()




def process(payload):
	data = payload.get_data()
	pkt = IP(data)
	proto = pkt.proto

	# Dropping the packet
	payload.set_verdict(nfqueue.NF_DROP)

	# Check if it is a ICMP packet
	if proto is 0x01:
		# Idea: intercept an echo request and immediately send back an echo reply packet
		if pkt[ICMP].type is 8:
			send_echo_reply(pkt)
		else:
			pass

	# Check if it is an UDP packet
	elif proto is 0x11:
		# Check if it is a DNS packet (raw check)
		if pkt[UDP].dport is 53:
			dns = pkt[UDP].payload
			qname = dns[DNSQR].qname
			fake_dns_reply(pkt, qname) 

	else:
		print "Protocol not handled!!"
		pass

def main():
	q = nfqueue.queue()
	q.open()
	q.bind(socket.AF_INET)
	q.set_callback(process)
	q.create_queue(0)

	try:
		q.try_run()

	except KeyboardInterrupt:
		print "Exiting..."
		q.unbind(socket.AF_INET)
		q.close()
		sys.exit(1)

main()
