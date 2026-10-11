
### "Openvpn connect" client
    - Profile location
    - %APPDATA%\OpenVPN Connect\profiles


### Get IIMCB DNS to work
    - In the end I manually added DNS entries to: 
        - /c/Windows/System32/drivers/etc/hosts

    - My changes to network adapter: $MY_IMAGES/cs/openvpn-adapter-dns.jpg
    - dns resolution                 https://superuser.com/questions/966832/windows-10-dns-resolution-via-vpn-connection-not-working
    - ping fails                     https://windowsreport.com/nslookup-works-but-ping-fails/

    - this was dodgy! Whacked OpenVPN and Gitbash tmux!
        netsh winsock reset catalog
        netsh int ip reset reset.log
        ipconfig /flushdns
        ipconfig /registerdns
        route /f

    - Powershell
        Get-NetIPInterface | select ifindex,*int*
        Get-NetIPInterface -InterfaceIndex 8 | Set-NetIPInterface -InterfaceMetric 600

    - Random info from Filip
        - For future reference: genesilico vpn server only
          supports a very ancient cipher. to force modern openvpn
          client to connect, one has to add the last line to the
          local openvpn CONF file:
            - `persist-key cipher BF-CBC`


### On Ubuntu 18.04
    sudo apt install openvpn
    sudo apt install network-manager-openvpn-gnome

### add network connection to ubuntu client (import openvpn config)
    sudo nm-connection-editor
    - click "Add..."
    - choose "Import a saved VPN configuration"

### [SERVER] Setup Openvpn:
    roadwarrior script:
    git clone https://github.com/Nyr/openvpn-install

### windows openvpn CLIENT:
    https://openvpn.net/index.php/open-source/downloads.html
    http://help.unotelly.com/support/articles/184301-openvpn-desktop-client-setup-windows-

### Ubuntu: Connect to openvpn with ".ovpn" file
    https://naveensnayak.wordpress.com/2013/03/04/ubuntu-openvpn-with-ovpn-file/

### Install the required packages
        sudo apt-get install network-manager network-manager-openvpn network-manager-openvpn-gnome

### Create individual files from client.ovpn file
        Get the correct .ovpn file from your administrator
        ( the one in this post is called _client.ovpn_ ).

        Because there is a bug in the network manager
        (https://bugs.launchpad.net/ubuntu/+source/network-manager-openvpn/+bug/606365)
        we cannot import the file directly, we will have to
        chop up the file manually and do some minor
        workarounds

        These files must be kept safe and private at all times

        - Make a directory called openvpn in your home
          directory
        - Copy the client.ovpn file into dir openvpn
        - Optional: Keep an original copy of the file – call
          it client.ovpn.orig
        - Next we will create 4 files under the openvpn
          directory.
        - Open the client.ovpn file in a text editor

        - Create file "ca.crt":
            – copy the text between <ca> and </ca> from
              client.ovpn into this file

        - Create file "client.crt":
            – copy the text between <cert> and </cert> from
              client.ovpn into this file

        - Create file "client.key":
            – copy the text between <key> and </key> from
              client.ovpn into this file

        - Create file "ta.key":
            – copy the text between <tls-auth> and
              </tls-auth> from client.ovpn into this file

        - At this point i have a total of 6 files under my
          openvpn directory

### Modify the client.ovpn file
        - Just before the ## —–BEGIN RSA SIGNATURE—– line add the
        below lines and save
        - ef note: couldnt find "## —–BEGIN RSA SIGNATURE—–" so
        I put the following 4 lines just before the <ca> tag

        ca ca.crt
        cert client.crt
        key client.key
        tls-auth ta.key

### Setting up the Network Manager
        - Click on Ubuntu network icon on the top right
        - Select VPN Connections -> Configure VPN ( the
          Network Connections window will open )
        - Click on the VPN tab and click Import
        - Select the client.ovpn file we just modified and
          it should automatically import some things into
          the next screen
        - Connection Name will be "client" – change this to
          something meaningful (I set it to companyVPN )
        - Gateway must be imported already
        - Type is : _Password with Certificates ( TLS )_
          – this was also set for me
        - Provide the username and password for VPN
        - User certificate will be client.crt
        - CA certificate   will be ca.crt
        - Private Key      will be client.key
        - Click on Advanced -> _TLS Authentication_ Tab
        - Key file will be ta.key
        - Key Direction must be set based on the key
          direction in your client.ovpn file
        - Open the client.ovpn file and search for
          “key-direction” and note the number after that
          ( mine is _key-direction 1_ )
        - Put this number in the Key Direction field in the
          TLS Authentication Tab
        - Click save on all windows and close all windows.

### test connection
        - Click 'Ubuntu network icon'
        - Select VPN Connections and you should see your
          connection there – click it
        - If successfully connected, you will see a message
          and then you can verify your IP address with
          `ifconfig`
