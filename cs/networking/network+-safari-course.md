### Safari books online

Network+ Course

### key idea:
    - data sent in discrete "chunks" called "Frames"
    - (note: "packets" are always encapsulated inside a "frame")

### frames
    - what do "frames" look like whizzing around? Like this:
      ... 101101010   1010101110   10101010101 ....
    - a single frame can be up to 1500 bytes long
    - frames are created and "eaten up" inside the network interface card
      (NIC) itself
    - frames have a _destination_ and _source_ MAC address

### MAC address
    - MAC address = Physical address = Media Access Control
    - 48 bits
    - first 24 bits issued to the manufacturer
        - eg. Broadcom has "70-F1-A1" (the OEM part)
        - then the remaining part of the MAC is unique for each NIC
    - In windows run: `ipconfig /all`

    - CRC = cyclic redundancy check
    - to show if we need to resend the frame

### "Broadcast" versus "Unicast"
    - MAC address for broadcast: "FF-FF-FF-FF-FF-FF"
    - "broadcast domain"

### logical addressing
    - most common: IP address
    - not fixed to a particular network card

### Routers
    - connect two or more networks
    - the frame must be altered and source and destination IP
      addresses must be added. This is called an IP packet
    - so a frame contains IP packets
    - default gateway: usually the connection to the router
    - every router has a "_routing table_"
-
    -
        problem 1:
            - I get an IP packet.
                - But which application on my computer is it for?
                - solution: _port numbers_....
            - I could have 3 web pages open, but packets for
              a specific web page will go to a specific _port_...
            - note: first 1024 are "well known ports" and have
              standard values...

        problem 2:
            - now I receive a single packet...but its only a tiny
              bit of a web page or a Word document... I want the
              whole thing...
            - thats where _TCP_ comes in... (connection based
              protocol)
            - important TCP idea 1: sequence numbers
            - important TCP idea 2: acknowledgements

### Modelling!
    - OSI (Open Systems Interconnection) model - older, more detailed
    - TCP/IP model - more simple
        1.  Application
        2.  Transport - _assembly_ and _disassembly_ of data packets
        3.  Internet - ip addresses
        4.  Network interface

### co-axial cable
    - two conductive material centred around a single axis
    - not used much any more
    - RG: Radio grade
    - They're measured by impedance
    - RG 6: main one used today for cable modems

### UTP: unshielded twisted pair
    - no shielding so don't let it close to things that cause
      interference (fluorescent light, electric motor)
    - usually 4 twisted pairs for networking
    - has kevlar fibre too, gives good linear strength
    - in 1990 speeds where 10 megabits per second
    - in 2000 speeds where 1000 megabits per second
    - nowadays: 10 Gigabits per second

    - CAT levels (written on cabel):
        - CAT 3    10   megabits per sec
        - CAT 5e   100  megabits per sec
        - CAT 6    1000 megabits per sec (1 Gigabit)
        - CAT 6a   10   Gigabits per sec

### Shielded Twisted Pair (STP)
    - has aluminium foil

### fibre optic cable
    - (orange) multimode: carries LED
    - (yellow) single mode
    - SC connector
    - ST connector
    - fc connector (screws in)
    - high density connectors
        - two cables (duplex) kind of stuck together into one
          connection
