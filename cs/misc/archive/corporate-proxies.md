

For TirNaNog
    export PROXY_SERVER=pndcwsgprxy05.healthirl.net
    export PROXY_PORT=8080

    # note 1:
    #       No need to give proxy username and password!!
    #       Just use "//:@" and default windows login is used.
    # note 2:
    #       for HTTPS_PROXY we actually have "http://" (!)
    export HTTPS_PROXY="http://:@$PROXY_SERVER:$PROXY_PORT"

### Other links
    - $MY_NOTES/cs/curl-tips.txt
    - Look for function `pon` (proxy on)
        - $HOME/dotfiles/local/old/ons/bash/bashrc.local

### quickly install my dev env
    set user environment variable for $HOME
    setup gitportable

    unzip dotfiles
    source moba_env_setup.sh

    ungpg/untar: ctags58_ssh
    ungpg/untar: ahk
        (gpg syntax: $MY_NOTES/cs/unix-ubuntu-tips.sh:205)


    git clone http://np2rvlapxx507/farree/ons-config.git

    run ipython once (creates ipython folder)
    run ons-config: ./put.sh
    run ons-config: ./chrome/update_chrome.bat

### misc commands
    cntlm -M http://google.com

    cntlm -c cntlm.ini

    cntlm
        https://sourceforge.net/projects/cntlm/files/cntlm/cntlm%200.92.3/
        http://www.icodeandcode.com/2012/10/tutorial-cntlm-portable.html

    emptyauth
        http://stackoverflow.com/questions/29095389/git-push-to-https-repository-from-intranet-application-with-kerberos-authenticat/35626581

    git bash
        netstat -an
        netstat -an | grep "ESTAB"

    powershell
        ipconfig

    SAS
    netsh
    netsh winhttp show proxy

### get around work proxy:
    - find proxy ip and port
        - use `chrome://net-internals/#proxy` and download
          the _pac_ file

    - one method: _export_ HTTP_PROXY variable
        - export HTTP_PROXY=http://mydomain\\myusername:mypassword@proxy.mycorp.com:proxy_port
        - or with "_:_" trick!
            - export HTTP_PROXY=http://:@proxy.mycorp.com:proxy_port

    - another method: SSH over proxy:
        - if _basic_ authentication:
            - in ~/.ssh/config
            > ProxyCommand /mingw64/bin/connect.exe -H username@my.companyproxy.com:443 %h %p
            see other settings below
        - if _ntlm_ authentication:
            - setup ~/.ssh/config:
            > ProxyCommand /c/windows/connect.exe -H 127.0.0.1:3128   %h   %p
           - then run cntlm
            - set it listening on _127.0.0.1:3128_
            - to run: `./cntlm.exe -v -f -c cntlm.ini`
              - v = verbose
              - f = debug
              - c = specify ini file location

### might need this
git config --global http.sslVerify false

### SSH config for connecting github and bitbucket over proxy
    ProxyCommand "C:\Program Files\git\bin\connect.exe" -H proxy.example.com:8080 %h %p

    Host github.com
    HostName ssh.github.com
    Port 443
    IdentityFile C:\Users\hoge\.ssh\id_rsa

    Host bitbucket.org
    HostName altssh.bitbucket.org
    Port 443
    IdentityFile C:\Users\hoge\.ssh\id_rsa

### bitbucket SSH on Port 443

Some network administrators block outgoing SSH connections
on port 22.  If your network blocks this port, Bitbucket
provides an alternate hostname and port combination you can
use.  The host altssh.bitbucket.org supports SSH over port
443.

Port 443 is typically used for HTTPS and administrator
typically leave it open for outbound web browsing.  If you
are blocked, you can use these URLs.

Alternate SSH URL format
    > ssh://git@altssh.bitbucket.org:443/accountname/reponame/

### Github SSH over https

- Make sure you are using the right Git URL:

Suppose your Public Clone URL is:
    > git://github.com/tachang/EyeFiServer.git

You should use the following URL that utilizes the SSH transport:
    > git clone ssh://git@github.com:22/tachang/EyeFiServer.git
    > git clone ssh://git@ssh.github.com:443/tachang/EyeFiServer.git

### Using Github Through Draconian Proxies (Windows)

Here is a pretty standard scenario at most corporations:

- All access to the internet is restricted to a proxy
- The proxy only allows connections out on port 80 and 443
- CONNECT method is only enabled for 443
- Proxy Authentication is required (NTLM or Basic)

Hi tachang! You’ve successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.

### Windows

    1. Download msysgit http://code.google.com/p/msysgit/

    Some settings:
        - “Run Git from the Windows Command Prompt”
        - “Use OpenSSH” (this one is very important)
        - Pick your line endings

    2. Download connect.c
        http://bent.latency.net/bent/darcs/goto-san-connect-1.85/src/connect.html

        > NOTE: connect.exe is installed as part of msysgit. It
        > was included in February of 2010

        This tool deserves its own post mostly because of its utter
        simplicity. It mirrors the open source tool corkscrew and is
        used for tunneling through proxies. Yes the tool’s name is
        really called “connect.c”.

        For Window’s users, a pre-compiled binary is available:
        _connect.exe_. I put my connect.exe in
        C:\Windows\connect.exe

    3. Decide whether you like to use the Windows cmd.exe to do
       stuff or the Cygwin style shell. Or both.

### Cygwin Git Bash Shell

    - For the Cygwin style shell start up the Git icon and edit
      the file ~/.ssh/config
    - Make sure the file has no extension.

    Put the following in that file:

    > ProxyCommand /c/windows/connect.exe -H username@proxy.example.com:443 %h %p

    > Host github.com
    > User git
    > Port 22
    > Hostname github.com
    > IdentityFile “/c/Keys/GitHubKey.private”
    > TCPKeepAlive yes
    > IdentitiesOnly yes

    > Host ssh.github.com
    > User git
    > Port 443
    > Hostname ssh.github.com
    > IdentityFile “/c/Keys/GitHubKey.private”
    > TCPKeepAlive yes
    > IdentitiesOnly yes

    - Notice the slash style in order to access the file
      system.
    - The proxy 'username' is specified as part of the proxy
      setting. The _password_ for the proxy is prompted for.
      Read more about connect.c to figure out how to get rid
      of this prompt.

    At this point, using the Git Bash shell should yield:

    > $ ssh github.com

    Hi tachang! You’ve successfully authenticated, but GitHub
    does not provide shell access. Connection to github.com
    closed

    If this doesn’t work you can run
    > $ ssh ssh.github.com

    And get the exact same thing. If the first command didn’t
    work it means you are using a proxy that blocks CONNECT on
    port 22. Almost no proxies block CONNECT on port 443 because
    you need that for SSL.

    We get a no shell access message from github because we are
    trying to obtain a shell and github has it disabled. However
    this indicates everything is working. This concludes the
    setup for Unix.
