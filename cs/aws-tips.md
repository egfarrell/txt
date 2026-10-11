aws tips

### aws cli INSTALL
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install

    ### CONFIGURE
        - $HOME/dotfiles/ini/aws/README.txt

### cREATE new server
    $HOME/bin/aws/create-vps.sh

### s3 bucket
    aws s3api create-bucket --bucket asr-comp --region eu-central-1 --create-bucket-configuration LocationConstraint=eu-central-1
    aws s3 ls --summarize --human-readable s3://asr-comp/
    aws s3 ls --human-readable s3://asr-data-988779896750
    aws s3 ls --human-readable s3://asr-data-988779896750/driven_data/
    aws s3 ls --human-readable s3://asr-data-988779896750/driven_data/train
    aws s3 ls s3://asr-data-988779896750/driven_data/train/ --delimiter 
    aws s3 ls --human-readable s3://asr-data-988779896750/talkbank/
    aws s3 ls

s3://asr-data-988779896750/driven_data/train/0
s3://asr-data-988779896750/driven_data/train/1
s3://asr-data-988779896750/driven_data/train/2
s3://asr-data-988779896750/talkbank/

    ### copy stuff down from an s3 bucket
        aws s3 sync s3://asr-comp/ /home/ef/repos/asr-comp/

1.  driven_data/train/0/    
2.  driven_data/train/1/    
3.  driven_data/train/2/




### instances

    SHOW RUNNING INSTANCES
        aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query "Reservations[].Instances[].{ID:InstanceId,Name:Tags[?Key=='Name']|[0].Value,Type:InstanceType,PublicIP:PublicIpAddress}" --output table

    TERMINATE ONE
        aws ec2 terminate-instances --instance-ids i-0db83155ce57f0063

### cli debugging
    "--debug"
    - useful to see how the cli excludes / includes files.


### EBS volumes
    - Attach https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html
    - Detach https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html

    - `AWS`
        - ATTACH
            - list blocks
                lsblk
                sudo lsblk -f

            - has it a file system? ("data" means no)
                `sudo file -s /dev/nvme1n1`
                > e.g. output:  /dev/nvme1n1: data
                - ONLY IF NO FILE SYSTEM:
                    sudo mkfs -t xfs /dev/nvme1n1

        sudo mkdir /mydata
        sudo mount /dev/nvme1n1 /mydata

        - UNMOUNT
            sudo umount -d /dev/nvme1n1


### Workspaces new machine:
    - Get registration code from "Directories"
        - $MY_IMAGES/cs/amazon-workspaces-registration.jpg
    - Get username from "Workspaces"
        - $MY_IMAGES/cs/amazon-workspaces-registration-2.jpg
        - password is my normal one...
        - (or remember what password you set when  you created
          the user in AD)

### Workspaces:
    - ip of local machine must be added via "ip access controls"
    - then "ip access controls" must be added to the `Directories`
    - toggle fullscreen: `ctrl+alt+enter`

### How to resize an instance
    - https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-resize.html
	- $MY_IMAGES/cs/aws-change-instance-size.jpg

### aws windows server 2012
    - reminna: enable _LOCAL_ sound
    - remote server: services.msc: set "Windows Audio." to Automatic startup
    - Browser Sound:
        - use Chrome for sound
        - Firefox doesnt do remote RDP sound by default
            - Didnt work: about: config: security.sandbox.content.level = 2

### connect to MS SQL Server on AWS RDS
    - RDS: Relational Database Service
    - sql server open ports https://docs.microsoft.com/en-us/sql/sql-server/install/configure-the-windows-firewall-to-allow-sql-server-access?view=sql-server-2017
    - connect to remote sql server https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sql/virtual-machines-windows-sql-connect#manualtcp
    - eftestsql.ukwest.cloudapp.azure.com, 1433

# aws security
    - You use your 12-digit account ID to reference your account
      programmatically and in other contexts. You use your
      canonical user ID to configure Amazon S3 access control
      lists (ACLs).

    IAM credentials
        https://efadmin.signin.aws.amazon.com/console
        User Name,Access Key Id,Secret Access Key
        "ef",xxxxxxxxxxxxxxxxxxxx,xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/

### disable Windows Server _IE_ security
    - Open "Server MAnager"
    - Change "IE Enhanced Security Configuration" to off (right-hand side)

### remote windows server base
    - create instance and be sure to set a keypair (needed for password later)
    - Once instance is running:
        - goto "Actions"
        - click "Connect"
        - Retrieve Password
        - Save password in txt file
        - Download RDP file
        - Right-click RDP file - click "edit" - change options (eg save credentials)

### check this tip out!
    - How to Save up to 50% on Your Non-Production EC2
    - Instances Using _Lambda_ and Resource _Tagging_

### sync not working for empty folders
    - S3 has no concept of folders. S3 is an object store where
      each object is identified by a key. The key might be
      a string like "logs/2014/06/04/system.log"

### bash completion
    complete -C aws_completer aws


### ec2
        alias ecd='aws ec2 describe-instance-status'
        alias ect='aws ec2 terminate-instances --instance-ids'

        terminate droplet (supply instance id)
            ect i-9983ad7d

### s3
        awb sync math s3://xxxxxxxxxx/math
        awb rm s3://xxxxxxxxxx/math --recursive
        awb cp  ~/dotfiles s3://xxxxxxxxxx/dotfiles --recursive

### check if instance running
	- in security groups, allow all HTTP connections
	- in browser, paste in public DNS

### security groups - partially block ip addresses (subnet)
	- 131.231.0.0/16

### LINKS
    - overview                       https://news.ycombinator.com/item?id=16772197
    - AWS IAM commands searchable db https://www.awsiam.info/
    - AWS EC2 on-demand pricing      https://aws.amazon.com/ec2/pricing/on-demand/
