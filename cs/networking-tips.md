### show available wifi
    sudo nmcli dev wifi rescan
    sudo nmcli dev wifi
    - Show internal Linux netowrk names
        nmcli connection show


# findout/get my ip address
    ai dnsutils
    nslookup `hostname`
    host `hostname`


### Bad LTE connection 1
    - $MY_NOTES/cs/networking/bad-LTE-4g-connections.txt


### Bad LTE connection 2: Linux Mint Asus
    Override dns of my LTE modem
        nmcli connection modify "Auto MERCUSYS" ipv4.ignore-auto-dns yes
        nmcli connection modify "Auto MERCUSYS" ipv4.dns "1.1.1.1 9.9.9.9"
        nmcli connection modify "Auto MERCUSYS" ipv4.method auto

    Now reconnect the Wi-Fi so the settings apply:
        nmcli connection down "Auto MERCUSYS"
        nmcli connection up "Auto MERCUSYS"

    Set LTE-friendly EDNS size (system-wide)
        v /etc/systemd/resolved.conf
            DNS=1.1.1.1 9.9.9.9
            FallbackDNS=
            DNSStubListener=yes
            DNSOverTLS=no
            Cache=yes
            EDNS=yes
            DNSSEC=no
            DNSMaxUDPSize=1232

        Edit systemd-resolved config:
            sudo systemctl restart systemd-resolved


### nmap:
    - I used for IIMCB:
    - press `up-arrow` to get an update on the scanning

### My ASUS linux mint
    - iphone hotspot keeps dropping
    - https://easylinuxtipsproject.blogspot.com/p/realtek.html#ID6
    - command: inxi -Fxz
    - Network:
        - Device-1: `Realtek RTL8821CE` 802.11ac PCIe Wireless Network Adapter
            - vendor: AzureWave driver: rtw_8821ce v: N/A port: e000 bus-ID: 02:00.0
            - IF: wlo1 state: up mac: <filter>

    - sudo apt-get install rtl8821ce-dkms



### Win 8.1: Public wifi login not working
    - BUW in warsaw
    - Problem: I had `DNS servers` hard-coded to 8.8.8.8
        - (in Network and sharing centre...)
    - Control Panel -> Network and Sharing
        -> click on the connection (usually WIFI)
        -> click on properties...
        - click on IPV4
        -> click on properties (again)...
        - ensure "`Obtain DNS server automatically`" is ticked

### Internet addressing:
    - Much of the internet is about translating addresses from
      one format to another:
        - DNS:  Human readable to IP
        - NAT:  Private IP     to Public IP
        - ARP:  MAC            to Private IP
        - BGP:  Public IP      to AS

### Scan network
    nmap -sn 148.81.0.0/24 -oG ~/nmap-output.txt


### What is listening on port 7860 / 7861?
    netstat -tulnp | grep -E ':(7860|7861)'


### CIDR
    - Poland: 31.0.0.0/8
    - stands for Classless Inter-Domain Routing. It's a method
      for allocating IP addresses and routing Internet Protocol
      packets. CIDR was introduced to improve the efficiency of
      IP address allocation and to extend the life of IPv4 by
      preventing its exhaustion. This method replaces the older
      system based on classes (A, B, C) and allows for more
      granular and flexible allocation of IP addresses.

    - CIDR notation is used to specify IP address ranges and
      includes an IP address followed by a slash (/) and
      a number. The number after the slash represents the length
      of the prefix, which is the portion of the IP address that
      is fixed or identical across the network. The remainder of
      the IP address can be used for different hosts within the
      network. For example, in the CIDR notation 192.168.1.0/24,
      the 192.168.1 is the fixed prefix, and the 24 indicates
      that the first 24 bits (the first three octets) are the
      network part of the address, leaving the last octet (8
      bits) for host addresses within that network.

### HN'ers debugging facebook outage
    - https://news.ycombinator.com/item?id=28748203
    - There's still no connectivity to Facebook's DNS servers:
    - `traceroute a.ns.facebook.com`
      - traceroute to a.ns.facebook.com (129.134.30.12), 30 hops max, 60 byte packets

    - They're hours into this outage and still haven't
      re-established connectivity to their own DNS servers.
    - reply
        - Its partially there. C and D are still not in the
          global tables according to routeviews ie. 185.89.219.12
          is still not being advertised to anyone. My peers to
          them in Toronto have routes from them, but not sure how
          far they are supposed to go inside their network. (past
          hop 2 is them)
        - `traceroute -q1 -I a.ns.facebook.com`

### Add DNS entry for Windows 10
    - As administrator, goto folder:
        - c:\Windows\System32\Drivers\etc
        - /c/Windows/System32/Drivers/etc/hosts
        and open file `hosts`

    - Add entries at the end, e.g.:
        192.168.6.154 gitlab21.genesilico.pl
        192.168.6.20  horde.genesilico.pl
        192.168.6.39  gitlab.genesilico.pl
        10.0.0.7      euglena.iimcb.gov.pl  # Intranet
        212.87.21.35  genesilico.pl


### find nameserver
    cat /etc/resolv.conf
    grep "nameserver" /etc/resolv.conf

### restart Ubuntu wifi
    ~/dotfiles/bin/restart-wireless.sh



### netgear N300 wifi range extender
    - http://www.mywifiext.net
    - ef.tools@gmx.com
    - see info.md for password

# show listening ports
    ```
    netstat -tuln
    ```
    sander:
        netstat -tulpen

    - Show which PROCESS is listening on the port too
    ```
    sudo lsof -i -n
    ```

### netcat
    - manually send packets
    - example
    ```
    nc 127.0.0.1 8080
    GET /test.html
    <enter>
    ```


### Show DNS upstream server
    - method 1
        ```
        nmcli dev show | grep DNS
        ```
    - method 2
        ```
        cat /etc/resolv.conf
        ```
        - Its 127.0.1.1 on Ubuntu.
        - ie local DNS cache server, not actual upstream.

### ports
    - are LOGICAL connections!
    - are just _NUMBERS_ inside a TCP packet!
        - when the network card and OS receives a packet
        - it checks the port number inside the packet
        - then checks a table if a program is listening or
          waiting for a packet on that particular port
        - netstat -nlp -t


### dnsmasq
    - config file:         /etc/dnsmasq.conf
    - other file:          /var/run/dnsmasq/resolv.conf
    - other file:          /etc/network/interfaces
    - All connection info: /etc/NetworkManager/system-connections

### Switches:
    - $MY_IMAGES/cs/switch-table.jpg
    - a switch uses the unique MAC address of each network card
      to identify packet destination
    - start with blank "switch table"
    - slowly build "table" to see which device is on which "port"
    - Switch checks MAC addresses in "sender" field
    - Full-duplex (send AND receive data at the same time)
    - Multiple collision domains

### ROUTERS (external networks)
    - layer 3 device: uses MAC address and IP addresses
    - doorway out of your internal network
    - connect networks to one another
    - often supports NAT
    - often has a DHCP server to hand out IP addresses
    - note: home routers often have a "switch" built-in

### HUB: (old)
    - layer 1 device (Physical layer, 1's and 0's)
    - glorified "bit cloning" machine (a "repeater")
    - cheap, simple way to create a network, but wastes bandwidth
    - "bit comes in, _clones_ go out"
    - replicates incoming data on all other interfaces
    - has no notion of packets
    - doesn't care who is to receive the data
    - receiver will get the msg and all other hosts ignore packets if
      the _receiver field_ doesnt match their own address.
    - remember with hubs, other people on the network can see your
      traffic (e.g. with WireShark)
    - half-duplex: cant send and receive data at the same time
    - 1 collision domain

### Bridge: (old)
    - layer 2 device (can understand MAC addresses)
    - 2 collision domains

### Private IP addresses
    - All private IP's begin like this:
    - 192.168.x.x
    - 10.x.x.x

### DHCP
    - step 1 DHCP discover
        - host searches for available dhcp servers to get an
          address from
        - host doesn't know where the DHCP server is, so
          "broadcasts" a discovery request
        - discovery broadcast details:
            - IP Sender:   0.0.0.0,         UDP port 68
            - IP Receiver: 255.255.255.255  UDP port 67
        - Note: udp port 68 reserved for DHCP clients
        - Note: udp port 67 reserved for DHCP servers

    - step 2: DHCP server "broadcasts offer" to entire network
    - step 3: DHCP request
    - step 4: DHCP ACK (acknowledgement)

    - note: addresses valid only for limited time
    - can be re-used after expiring.
    - Hosts can keep their addresses by renewing lease.

### packet structure
    - application   eg. HTTP
    - transport     eg. UDP and TCP
    - netowrk       eg. IP
    - link          eg. Ethernet or WiFi
    - physical      eg. coaxial ethernet cable

### transport layer
    - allows multiple applications to simultaneously use one
      network connection
    - assembles and dis-assembles data using sequence numbers
    - transport layer creates about 65,000 ports per network
      connection

### UDP:
    - lightweight but not very reliable
    - message oriented (eg like snail mail)
    - basic error detection only
    - dropped packets not resent
    - smaller packet sizes
        UDP header: 8  bytes
        TCP header: 20 bytes
    - note: its up to the TCP

    - No connection to create and maintain
    - More control over when data is sent
    - UDP better for video / multimedia streaming
    - Some firewalls block UDP

### TCP
    - "stream oriented"
    - connection based: "three way handshake"
    - delivery acknowledgements (numbered segments)
    - retransmission if no acknowledgement
    - numbered segments: can put in right order
    - congestion control (delay transmission)
    - SSH uses TCP

### DNS
    - 380 root servers world-wide divided into 13 groups
    - e.g. looking for "example.net"
    - DNS client asks it's "root server"
    - root server says who is responsible for the TLD (top level
      domain layer)
    - TLD: a bunch of servers resoponsible for ".com", ".net" etc
    - The TLD says whos responsible for the domain name layer
    - The domain name layer returns an IP for the specified URL
    - "glue records"
    - "authorative name server"
    - DNS Cache: saves looking up each time


Dlink router ping ip port forward network
ping IP router stuff

### Old Router Dlink DIR-615
	user: admin
	password: season one with no capital at start

    - Port Forwarding on old Dlink
        - enter External IP address in browser
        - login via web page
        - choose port forwarding under advanced

### internal / external IP address
	- WhatsMyIP: returns public external IP address of the router
	- IPconfig:  returns internal IP address

### ping
    ```
    ping -4 ania-laptop
    ```
	"-4" converts ania-laptop to IPV4 format

### NAT
	- Network Address Translation
    - NAT-Port forwarding
        - when request received at external IP,
        - re-route it to internal IP

### change Virgin Media DNS servers
    - screenshot of my changes $MY_IMAGES/cs/configure-dns-nameserver.jpg
    - manually change network manager: https://askubuntu.com/questions/2321/what-is-the-proper-way-to-change-the-dns-ip

### Recommended from CCNA course:
    - Cisco Learning Network
    - GNS labs -> precreated Cisco Labs
    - Wireshark
    - Cisco Packet Tracer (simulates different routers/connection switches)
    - GNS3 (Graphical Network - Emulator)
    - Kitty (enhanced Putty)
    - TFTP (Virtual FTP server)
        - transfer files to/from your cisco devices
    - "Angry IP Scanner"
        - (see who is out there, in your local IP space)


### Links
    - ipleaks                                  https://ipleak.net/
    - Computer networks course                 https://www.youtube.com/playlist?list=PLfgkuLYEOvGMWvHRgFAcjN_p3Nzbs1t1C
    - IPv6 fundamentals                        https://news.ycombinator.com/item?id=28705259
    - Cloudfare BGP, DNS etc (Facebook outage) https://blog.cloudflare.com/october-2021-facebook-outage/
    - My notes: CompTIA Network+               $MY_NOTES/cs/networking/network+-safari-course.md
    - Beej Linux netowrk programming           https://news.ycombinator.com/item?id=32165278
    - first 10 mins server                     https://news.ycombinator.com/item?id=11909543
