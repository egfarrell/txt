### ShrikeCast & Andrew Crouthamel "CCNA" training
    - https://www.youtube.com/watch?v=bO74ZTcc648&list=PLmdYg02XJt6QRQfYjyQcMPfS3mrSnFbRC
    - CCNA:  Cisco Certification Network Associate
    - CCENT: core knowledge of how networks operate

### Recommended:
    - Cisco Learning Network
    - GNS labs -> precreated Cisco Labs
    - Wireshark
    - Cisco Packet Tracer (simulates different routers/connection switches)
    - GNS3 (Graphical Network - Emulator)
    - Kitty (enhanced Putty)
    - TFTP (Virtual FTP server) 
        - transfer files to/from your cisco devices
    - "Angry IP Scanner" 
        - see who's out there, in your local IP space

### Contents:
    1.   About ShrikeCast and Andrew Crouthamel
    2.   About Cisco Certification and CCNA
    3.   Useful Networking Tools and Learning Resources
    4.   When Do I Use a Network
    5.   What are Networks
    6.   The History of the Internet
    7.   How the Internet is Designed
    8.   How to Communicate
    9.   Sizes of Networks
    10.  Protocols
    11.  OSI and TCP_IP Models
    12.  All About Applications
    13.  Common Protocols
    14.  Roles of the Transport Layer
    15.  TCP and UDP Protocols
    16.  Internet Protocol and IPv4
    17.  Networks and Subnets
    18.  Introduction to Routing
    19.  IPv4 Basics
    20.  IPv4 Address Types
    21.  IPv4 Subnetting
    22.  IPv6 Addressing Basics
    23.  IPv6 Unicast and Multicast
    24.  IPv6 Testing Connections
    25.  Data Link Layer Basics
    26.  Physical Layer Basics
    27.  Network Media
    28.  Topology Basics
    29.  Ethernet Basics
    30.  Address Resolution Protocol (ARP)
    31.  Switch Basics
    32.  IOS Device Basics
    33.  IOS Command Basics
    34.  Switch Configuration Basics
    35.  Switch Security Basics
    36.  Switch Port Security
    37.  VLAN Basics
    38.  Creating VLANs
    39.  VLAN Trunks
    40.  VLAN Security
    41.  Layer 3 Switching
    42.  Routing Basics
    43.  Routing Table Basics
    44.  Router-on-a-stick Configuration
    45.  Static Routing Basics
    46.  Static Routing Configuration
    47.  Dynamic Routing Protocols Basics
    48.  Distance Vector Routing Protocols
    49.  RIP Configuration
    50.  Open Shortest Path First (OSPF)
    51.  OSPFv2 Single-Area Configuration
    52.  OSPF Multi-Area Basics
    53.  OSPF Multi-Area Configuration
    54.  EIGRP Basics
    55.  EIGRP Configuration
    56.  EIGRP Metrics and DUAL
    57.  EIGRP Tuning and Security
    58.  Access Control Lists (ACLs)
    59.  Standard IPv4 ACL Configuration
    60.  Extended IPv4 ACL Configuration
    61.  Dynamic Host Configuration Protocol (DHCP)
    62.  DHCP Configuration
    63.  Network Address Translation (NAT)
    64.  NAT Configuration
    65.  Spanning Tree Protocol (STP)
    66.  Spanning Tree (STP) Configuration
    67.  Redundancy Protocols
    68.  Link Aggregation Basics
    69.  Wireless Basics and Security
    70.  IOS Naming Scheme
    71.  IOS Licensing
    72.  WAN Basics
    73.  Serial Point-to-Point
    74.  WAN Encapsulation
    75.  PPP Configuration
    76.  Frame Relay Basics
    77.  Frame Relay Configuration
    78.  PPPoE Configuration
    79.  VPN Basics
    80.  GRE Tunnel Configuration
    81.  Syslog Basics
    82.  SNMP Basics
    83.  NetFlow Basics
    84.  Credits


### Basics:
    - how do we talk from one computer to the other? 
    - Copper wire, fibre optic cable, wireless?
    - networks define who the "senders" and "recievers" are.
    - Do I send all my data in one big chunk? 
    - Do I split it into little bits? (how big are those bits?)
    - what language do I talk to you across the connection?
    - what speed do I connect to you at? 
    - (network media protocol defines how fast it happens)
    - what size "packets" or "frames" do we send?
    - do we send an acknowledgment?
    - "quality" of the connection e.g. video v. financial
      transactions?
    - how often do we retry after failed transmission?
    - what if the connection is unreliable?
    - note: video might "go over" a certain protocol. But if
      youre chatting (XMPP) that might be a certain protocol. Or
      emails: POP, SMTP
    - copper cable quality: category IV, cat 6, cat 7
    - wireless protocols: "N", or "G" or "B"
    - segments, packets, frames
    - protocols important: voice and data on the same network!
    - Everything has converged! 
    - (even "power" charging can travel across "data" cables!)

### Switching packets:
    - older method; circuit switching (1 dedicated connection from A to B)
    - new   method; packet  switching
