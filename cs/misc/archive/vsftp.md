very secure ftp

setup
    ai vsftpd
    v /etc/vsftpd.conf
        anonymous_enable=NO
        write_enable=YES
        chroot_local_user=YES
        allow_writeable_chroot=YES
    sudo service vsftpd restart
    navigate to: 
        ftp://xxx.xxx.xxx.xxx

