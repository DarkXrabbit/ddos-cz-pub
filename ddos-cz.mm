<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="hide"/>
<node COLOR="#000000" CREATED="1374131791195" ID="Freemind_Link_1" MODIFIED="1378228276919" TEXT="ddos-cz">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1374131791196" ID="Freemind_Link_2" MODIFIED="1374223950217" POSITION="right" TEXT="by means/target">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1374131791196" ID="Freemind_Link_3" MODIFIED="1374229463152" TEXT="network congestion">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374229417618" ID="ID_72363803" MODIFIED="1374229435136" TEXT="degrading network infrastructure performace">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374229437555" ID="ID_857279481" MODIFIED="1374262669767" TEXT="control plane attacks">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374231848066" ID="ID_263351680" MODIFIED="1374231872159" TEXT="BGP hijack, OSPF, ..."/>
</node>
<node COLOR="#990000" CREATED="1374231828722" ID="ID_1071730296" MODIFIED="1374262669137" TEXT="management plane attacks">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374231857842" ID="ID_1304269390" MODIFIED="1374231862735" TEXT="ssh, telnet, tftp ..."/>
</node>
</node>
<node COLOR="#00b439" CREATED="1374131791196" ID="Freemind_Link_4" MODIFIED="1377621190422" TEXT="draining cpu/memory/disk">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1377621153093" ID="ID_509105974" MODIFIED="1377628776757" TEXT="process forking">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      bash fork bomb
    </p>
    <p>
      :(){ :|:&amp; };:
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1377621193749" ID="ID_1714341398" MODIFIED="1377628773685" TEXT="filling disk">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1374131791197" ID="Freemind_Link_7" MODIFIED="1374136378010" TEXT="exploiting timers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374136390926" ID="ID_229502217" MODIFIED="1374237804345" TEXT="non direct attacks/dependent services disruption">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374237807132" ID="ID_263897389" MODIFIED="1374237808553" TEXT="DNS">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374237809276" ID="ID_1735415175" MODIFIED="1374237811193" TEXT="RADIUS">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374237812492" ID="ID_79109082" MODIFIED="1374237813113" TEXT="...">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1377621171931" ID="ID_719486530" MODIFIED="1377621174553" TEXT="process killing">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1374131791199" ID="Freemind_Link_22" MODIFIED="1378228342354" POSITION="left" TEXT="attacks">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1374133654785" ID="ID_1166288720" MODIFIED="1374134053435" TEXT="sitove utoky">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374135833055" ID="ID_1845537799" MODIFIED="1374223662526" TEXT="direct flooding">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374131791201" ID="Freemind_Link_32" MODIFIED="1377264931911" TEXT="ICMP flood">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#111111" CREATED="1374133238113" ID="ID_1387782503" MODIFIED="1374138947013" TEXT="Ping of death">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1380491205116" ID="ID_15426798" MODIFIED="1380491216524" TEXT="Random unrechable host"/>
</node>
<node COLOR="#111111" CREATED="1374131791201" ID="Freemind_Link_31" MODIFIED="1377264933374" TEXT="SYN flood">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374131791200" ID="Freemind_Link_30" MODIFIED="1377264933973" TEXT="UDP flood">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374131791201" ID="Freemind_Link_34" MODIFIED="1377441986749" TEXT="TCP ACK flood">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#111111" CREATED="1374131791202" ID="Freemind_Link_35" MODIFIED="1374134053437" TEXT="STREAM flood">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1374131791201" ID="Freemind_Link_33" MODIFIED="1374135840534" TEXT="NULL flood">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374131791202" ID="Freemind_Link_36" MODIFIED="1374135840534" TEXT="HAVOC flood">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1377442602845" ID="ID_587036537" MODIFIED="1377442614705" TEXT="blind syncookies spoofing"/>
<node COLOR="#111111" CREATED="1380491189404" ID="ID_67672028" MODIFIED="1380491192271" TEXT="ARP flood"/>
</node>
<node COLOR="#990000" CREATED="1374223259458" ID="ID_370150364" MODIFIED="1374223879104" TEXT="reflective/amplified">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374132064515" ID="ID_1162967569" MODIFIED="1377625671567" TEXT="Smurf attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      icmp echo request to broadcast
    </p>
    <p>
      
    </p>
    <p>
      proti vzdalenemu broadcast pingu jsou dnes site chraneny (asi aktivnimi prvky)
    </p>
    <p>
      ale uvnitr segmentu se ozyvaji nektere jednodussi sitove prvky, kvmka a pod. linuxovy kernel se neozve (cl minos)
    </p>
    <p>
      
    </p>
    <p>
      utok se da porad pouzit pomoci requestu se spoofnutou zdrojovkou a nakratko odrazit maly paket ze subnetu pres internet na cil v prislusnem zesileni ...
    </p>
    <p>
      
    </p>
    <p>
      smurf finder:
    </p>
    <p>
      &#160;nmap -n -sP -PI -o smurf.log '209.12.*.0,63,64,127,128,191,192,255'
    </p>
    <p>
      &#160; http://packetstormsecurity.com/files/12375/smurf.BIP-hunting-nmap.txt.html
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1374223807010" ID="ID_377106299" MODIFIED="1377621351908" TEXT="Fraggle attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      jako smurf ale pouziva UDP
    </p>
    <p>
      
    </p>
    <p>
      napriklad echo service
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1374225189027" ID="ID_1217839503" MODIFIED="1374225828817" TEXT="ICMP Whatever Response flood"/>
<node COLOR="#111111" CREATED="1374131791200" ID="Freemind_Link_29" MODIFIED="1377264942677" TEXT="TTL expiration">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374223303330" ID="ID_228077064" MODIFIED="1377442049511" TEXT="TCP SYN-ACK flood">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      zafloodovani objeti syn-ack floodem
    </p>
    <p>
      
    </p>
    <p>
      generator posila syn ze zdrojovou objeti a reflektor zahlti objet synackem
    </p>
    <p>
      
    </p>
    <p>
      zesileni je dosazeno na urovni linky protoze chudak objet generuje rst k reflektoru protoze puvodne nic nechtela
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374225748403" ID="ID_1980166048" MODIFIED="1374225847681" TEXT="UDP reflective flood">
<node COLOR="#111111" CREATED="1374223279714" ID="ID_1248948654" MODIFIED="1396554590430" TEXT="DNS flood">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2 implementace, jedna v tg a jedna v misc
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1377264983686" ID="ID_1623791341" MODIFIED="1396554591604" TEXT="DNSSEC flood">
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374225753043" ID="ID_1454721284" MODIFIED="1377850417568" TEXT="SNMP reflection">
<icon BUILTIN="button_ok"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1396554420832" ID="ID_395271009" MODIFIED="1396554455149" TEXT="NTP reflection">
<node COLOR="#111111" CREATED="1396554424228" ID="ID_537737583" MODIFIED="1396554463574" TEXT="monlist">
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1396554426898" ID="ID_285276354" MODIFIED="1396554436191" TEXT="ntpq -c rv IP"/>
</node>
<node COLOR="#111111" CREATED="1396554650197" ID="ID_3590368" MODIFIED="1396554656807" TEXT="others">
<node COLOR="#111111" CREATED="1396554602958" ID="ID_210592892" MODIFIED="1396554605912" TEXT="NetBIOS"/>
<node COLOR="#111111" CREATED="1396554606417" ID="ID_571416219" MODIFIED="1396554608060" TEXT="SSDP"/>
<node COLOR="#111111" CREATED="1396554608428" ID="ID_463873932" MODIFIED="1396554610670" TEXT="CharGEN"/>
<node COLOR="#111111" CREATED="1396554611215" ID="ID_509365503" MODIFIED="1396554612906" TEXT="QOTD"/>
<node COLOR="#111111" CREATED="1396554613234" ID="ID_398045045" MODIFIED="1396554617285" TEXT="Bittorrent"/>
<node COLOR="#111111" CREATED="1396554617574" ID="ID_1933557406" MODIFIED="1396554618826" TEXT="Kad"/>
<node COLOR="#111111" CREATED="1396554619059" ID="ID_243331764" MODIFIED="1396554640891" TEXT="Quake Network protocol"/>
<node COLOR="#111111" CREATED="1396554622257" ID="ID_921732948" MODIFIED="1396554645670" TEXT="Steam Protocol"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1374135842399" ID="ID_128344781" MODIFIED="1374224155472" TEXT="fragmentation attacks">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374131791200" ID="Freemind_Link_28" MODIFIED="1374135855196" TEXT="Teardrop">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mangled IP fragments with overlapping
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374134650944" ID="ID_211525177" MODIFIED="1377439815355" TEXT="Rose frag attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://digital.net/~gandalf/Rose_Frag_Attack_Explained.txt
    </p>
    <p>
      
    </p>
    <p>
      posle prvni a posledni fragment obrovskeho pseudopaketu
    </p>
    <p>
      
    </p>
    <p>
      v novych kernelech je ochrana pomoci fixni cache ip frag evictor
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374135818814" ID="ID_1968177459" MODIFIED="1377439779519" TEXT="New Dawn fragmentation attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://digital.net/~gandalf/Rose_Frag_Attack_Explained.txt
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374134495904" ID="ID_440293162" MODIFIED="1374135855197" TEXT="IPv6 Extension Header Fragmentation Attacks">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1374135859215" ID="ID_389540589" MODIFIED="1378222780668" TEXT="misc">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1377537122564" ID="ID_1703976445" MODIFIED="1378228248270" TEXT="thc-ssl-dos">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ssl handshake je na serveru o dost drazsi nez na klientu ...
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374131791202" ID="Freemind_Link_37" MODIFIED="1374135863877" TEXT="IP Header attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      TOS mangling
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374131791202" ID="Freemind_Link_38" MODIFIED="1377615453098" TEXT="TCP Random Header attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Bubonic.c
    </p>
    <p>
      
    </p>
    <p>
      tcp-randh implementace je mirne odlisna od bubonicu, trafgen neumi zvysovat ipid ani sekvencni cislo
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374133476897" ID="ID_1973225904" MODIFIED="1377621061986" TEXT="Land/Banana attack">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      zdrojova a cilova adresa je v paketu shodna
    </p>
    <p>
      
    </p>
    <p>
      linuxovy kernel to odhali pres martian link address, ze mu pise nekdo pod jeho IP se spatnou MACkou (router)
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#111111" CREATED="1374136874757" ID="ID_953307387" MODIFIED="1374136875880" TEXT="ICMP based TCP-Connection reset"/>
<node COLOR="#111111" CREATED="1374136884511" ID="ID_592180814" MODIFIED="1374136885188" TEXT="Blind TCP-Connection reset"/>
<node COLOR="#111111" CREATED="1374136903982" ID="ID_1503745709" MODIFIED="1374136905852" TEXT="DHCP">
<node COLOR="#111111" CREATED="1374136895438" ID="ID_1240347441" MODIFIED="1374136896540" TEXT="DHCP starvation attack"/>
<node COLOR="#111111" CREATED="1374136910622" ID="ID_564924428" MODIFIED="1374136911532" TEXT="DHCP-Release forcing"/>
<node COLOR="#111111" CREATED="1374136917582" ID="ID_368009416" MODIFIED="1374136918283" TEXT="DHCP-Discover flooding"/>
</node>
<node COLOR="#111111" CREATED="1374138910139" ID="ID_1307898383" MODIFIED="1374138914872" TEXT="IPv6">
<node COLOR="#111111" CREATED="1374134484368" ID="ID_1998792166" MODIFIED="1374135863882" TEXT="IPv6 NDP Exhaustion">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374138891419" ID="ID_228922459" MODIFIED="1374138902398" TEXT="IPv6 Routing Header DoS"/>
<node COLOR="#111111" CREATED="1383041907618" ID="ID_1264782635" MODIFIED="1383041910831" TEXT="RA spoofing"/>
</node>
<node COLOR="#111111" CREATED="1374136926141" ID="ID_367579245" MODIFIED="1374138933280" TEXT="Cisco HSRP active router hijacking"/>
<node COLOR="#111111" CREATED="1374237672012" ID="ID_474050535" MODIFIED="1374237673769" TEXT="DNS poison"/>
<node COLOR="#111111" CREATED="1377628172819" ID="ID_1634889558" MODIFIED="1377628175660" TEXT="IGMP flooding"/>
<node COLOR="#111111" CREATED="1378222782980" ID="ID_345852690" MODIFIED="1378228171765" TEXT="zmap - fast internet scanning">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rychle scanovani internetu pri G rychlostech
    </p>
    <p>
      algoritmu generovani (nejaka cyklicka groupa) adres s vysokym rozptylem
    </p>
    <p>
      rozpoznani navracenych paketu pomoci cookies nezavislym vlaknem v pcap
    </p>
    <p>
      
    </p>
    <p>
      diky fake socketu by se s velkym adresnim prostorem nebo spavnymi sondami dal fakeovat
    </p>
    <p>
      finalni ack proti syncookies
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1374133583857" ID="ID_476118203" MODIFIED="1374223632192" TEXT="low-rate attacks">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374133590289" ID="ID_1907565024" MODIFIED="1377541678803" TEXT="Slowloris">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      never ending slow headers
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#990000" CREATED="1374133593329" ID="ID_910794893" MODIFIED="1378135314811" TEXT="RUDY/SlowPost">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      slow POST data sending
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#990000" CREATED="1377627816327" ID="ID_559761572" MODIFIED="1378231833081" TEXT="http keep-alive, nocache">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#111111" CREATED="1377626456765" ID="ID_295750337" MODIFIED="1378228254906" TEXT="goldeneye">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tool od jan seidl
    </p>
    <p>
      
    </p>
    <p>
      v pythonu generuje mnozstvi spojeni s keepalive a nahodne strukturovanym obsahem
    </p>
    <p>
      dost to server zamestna
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#990000" CREATED="1374133741201" ID="ID_401453796" MODIFIED="1374138129655" TEXT="obracena labrea">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
<node COLOR="#990000" CREATED="1374134302688" ID="ID_1239452471" MODIFIED="1374134303629" TEXT="HTTP Fragmentation Attack">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1378231848697" ID="ID_306132252" MODIFIED="1378231867636" TEXT="pyloris lze pouzit i na non http protokoly">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1374133804721" ID="ID_680617801" MODIFIED="1374223683519" TEXT="application attacks">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374133968609" ID="ID_1136411206" MODIFIED="1374134053442" TEXT="owasp.org">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374133935201" ID="ID_452868678" MODIFIED="1374134053443" TEXT="SQL Wildcard Attacks (OWASP-DS-001)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374133927617" ID="ID_293147138" MODIFIED="1374134053443" TEXT="DoS Locking Customer Accounts (OWASP-DS-002)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374133949825" ID="ID_1928672498" MODIFIED="1374134053443" TEXT="riting User Provided Data to Disk (OWASP-DS-006)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374133962977" ID="ID_1102463701" MODIFIED="1374134053443" TEXT="Storing too Much Data in Session (OWASP-DS-008)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374242064858" ID="ID_1241699178" MODIFIED="1374242072086" TEXT="Session ID exhaustion"/>
<node COLOR="#111111" CREATED="1374133975057" ID="ID_634969770" MODIFIED="1374134053443" TEXT="... jeste dalsi"/>
</node>
<node COLOR="#990000" CREATED="1374134412176" ID="ID_1225347765" MODIFIED="1374134460365" TEXT="VOIP flood">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      zaplavovani ruznymi typy zprav REGISTER, INVITE, ...
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1377626446933" ID="ID_964206200" MODIFIED="1377626455158" TEXT="httpd">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374242754345" ID="ID_256031042" MODIFIED="1377626450420" TEXT="apache sioux attack">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1374242750329" ID="ID_589449019" MODIFIED="1377626452001" TEXT="apache mime flooding">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1374131791202" ID="Freemind_Link_14" MODIFIED="1374223708959" POSITION="right" TEXT="by netflow">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1374131791202" ID="Freemind_Link_15" MODIFIED="1374223715566" TEXT="flooding">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374131791203" ID="Freemind_Link_17" MODIFIED="1374223721023" TEXT="direct">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374131791203" ID="Freemind_Link_16" MODIFIED="1374224003381" TEXT="reflective">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374223927938" ID="ID_1080790814" MODIFIED="1374224003381" TEXT="amplified">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1374131791203" ID="Freemind_Link_20" MODIFIED="1374223740223" TEXT="low-rate">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374225977171" ID="ID_1315490394" MODIFIED="1374225981568" TEXT="application based attacks">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1374138165563" ID="ID_1882916479" MODIFIED="1374248163476" POSITION="right" TEXT="defense">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1374138180731" ID="ID_701547755" MODIFIED="1374138187311" TEXT="tcp syn cookies">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374263205545" FOLDED="true" ID="ID_1620904932" MODIFIED="1378228333525" TEXT="linux kernel fragmentation evictor">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374263213615" ID="ID_339821010" MODIFIED="1377439853236" TEXT="hlidani delky fronty do ktere se radi pouze omezene mnozstvi fragmentu">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1377852822987" ID="ID_249633597" MODIFIED="1378228356340" TEXT="network infrastructure">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1377852786523" ID="ID_954147446" MODIFIED="1377852828229" TEXT="cisco">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1377852789851" ID="ID_909791336" MODIFIED="1378228288844" TEXT="control plane policing">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1378228291047" ID="ID_1573063178" MODIFIED="1378228326531" TEXT="ochrana hlavniho cpu, ktere je slabe oproti accessovym kartam"/>
</node>
<node COLOR="#111111" CREATED="1377853166235" ID="ID_362571055" MODIFIED="1377853168760" TEXT="port security">
<node COLOR="#111111" CREATED="1377853169627" ID="ID_474406163" MODIFIED="1377853180471" TEXT="arp table - mapovani IP vs MAC; aging 5h"/>
<node COLOR="#111111" CREATED="1377853181259" ID="ID_1478593168" MODIFIED="1377853194218" TEXT="mac address table - mapovani MAC vs PORT; aging 5 minut"/>
<node COLOR="#111111" CREATED="1377853196635" ID="ID_488564445" MODIFIED="1377853220568" TEXT="port security omezuje pocet zaznamu v mac address table aby se switch nezacal chovat jako hub"/>
</node>
</node>
<node COLOR="#990000" CREATED="1374239962282" ID="ID_766692855" MODIFIED="1377852829547" TEXT="destination based black hole filtering">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374239406571" ID="ID_1245942095" MODIFIED="1377852832083" TEXT="prefix filtering">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1377439866091" ID="ID_1028123716" MODIFIED="1378228369652" TEXT="anycast">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374239257579" ID="ID_1521323029" MODIFIED="1377852835835" TEXT="Unicast Reverse Path Forwarding">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1377852871851" ID="ID_285172172" MODIFIED="1377852876664" TEXT="obecne rate limiting a qos">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1378228379064" ID="ID_1952177728" MODIFIED="1378228399344" TEXT="load balancing">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1378228403199" ID="ID_680024542" MODIFIED="1378228404966" TEXT="dns rr">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1378228407297" ID="ID_1275413819" MODIFIED="1378228416465" TEXT="hw/sw balancer">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1374138286235" ID="ID_1051281614" MODIFIED="1374262658996" TEXT="apache">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1378066683486" ID="ID_1938857260" MODIFIED="1378222966491" TEXT="Timeout, KKeepAliveTimeout, mpm-worker">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1377460953035" FOLDED="true" ID="ID_19906051" MODIFIED="1377538234158" TEXT="mod_reqtimeout">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1377460960028" ID="ID_753310630" MODIFIED="1377460973514" TEXT="defaultne ve squeeze"/>
</node>
<node COLOR="#990000" CREATED="1374138173532" ID="ID_1239433097" MODIFIED="1378222960166" TEXT="modsecurity">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1374138231644" ID="ID_1135025606" MODIFIED="1378222960167" TEXT="slowloris">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1374138306619" ID="ID_1804822354" MODIFIED="1374138311065" TEXT="SecReadStateLimit"/>
</node>
<node COLOR="#111111" CREATED="1374138234059" ID="ID_95411994" MODIFIED="1378222960167" TEXT="rudy">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1374138235803" ID="ID_540873771" MODIFIED="1374138253369" TEXT="RequestReadTimeoutBody"/>
</node>
</node>
<node COLOR="#990000" CREATED="1374138292060" ID="ID_1864268644" MODIFIED="1378222967601" TEXT="specialni patche">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1374239717258" ID="ID_754709427" MODIFIED="1374239721208" TEXT="backscatter">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374138194667" ID="ID_1112178459" MODIFIED="1377852846780" TEXT="rate limiting">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1377772591032" ID="ID_1595147871" MODIFIED="1377852846781" TEXT="syslog write disk rate limit">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374138779051" ID="ID_1594796633" MODIFIED="1377852846780" TEXT="Commited Access Rate">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1374138786923" ID="ID_1385862716" MODIFIED="1377852846781" TEXT="Distributed Commited Accest Rate">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1374137943388" ID="ID_1210289222" MODIFIED="1374225575596" POSITION="right" TEXT="tools">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1374223001762" ID="ID_1073971080" MODIFIED="1374225575596" TEXT="hping3">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374137947148" ID="ID_1040413632" MODIFIED="1374225575596" TEXT="trafgen">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374137949708" ID="ID_65529381" MODIFIED="1374225575596" TEXT="hyenae">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1374138692859" ID="ID_1671273886" MODIFIED="1374225575596" TEXT="OWASP HTTP Post Tool">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1377541685366" ID="ID_451699675" MODIFIED="1377541690021" TEXT="thc-ssl-dos">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1378815888146" ID="ID_1810250462" MODIFIED="1378815902716" TEXT="TODO: slowhttptest">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="help"/>
</node>
<node COLOR="#00b439" CREATED="1374359941025" ID="ID_1290585907" MODIFIED="1377541699223" TEXT="pktgen primo v kernelu">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1374359951816" ID="ID_1017257736" MODIFIED="1374359957937" TEXT="doc/pktgen.txt">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
