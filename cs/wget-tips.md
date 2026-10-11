wget multiple files


### Trick the website (--referer)
    wget --load-cookies=./cookies.txt   --referer member.oaim.ie/clientarea/dashboard/viewlesson/40       -O expert-whistle-lesson-00--01.mp4     https://member.oaim.ie/assets/uservideos/example.mp4


# get all pdfs from a website? (used it for CERN stuff?)
    ```
    wget --recursive --level=3 -A "*.pdf"
    ```

### Rename output
    - "-c" continue
    - "-O" output name
    wget -c URL -O mynewname.file

# accept certain file types
    wget -A gif,jpg

# accept pattern match
    wget -A "zelazny*196[0-9]*"

# wget with user login (1)
    wget --user=MYUSER --password=MYPASSWORD http://mysite.example.com/
    wget --user=MYUSER --ask-password        http://mysite.example.com/

# wget with user login (2)
    install firefox addon "export-cookies"
    wget -r  --load-cookies=cookies.txt   http://mysite.example.com/

# download website html
                                                     [LOCAL-DIR]   [WEBSITE-URL]
                                                     [LOCAL-DIR]   [WEBSITE-URL]
      wget --mirror -p --convert-links --wait=1 -P   ./simpson     http://www.thomasksimpson.com/

    * _–mirror_         : enable options suitable for mirroring.
    * _-p_              : download all files necessary to display a HTML page.
    * _--convert-links_ : after download, convert links in document for local viewing.
    * _--wait=seconds_  : be nice to website
    * _-P ./LOCAL-DIR_  : save all the files and directories to the specified directory.

### Download Multiple Files / URLs Using Wget -i
    wget -i targetfiles

### old alias (get pdfs)
    alias grab='wget -r -A .pdf'

### WGET a JAVA rpm (was a html file!)
    - problem:
        - wget will not follow a redirect when you hand it
          a dynamic page that forwards you to a download page, or
          a 404 error page like above...
        - instead it downloads the *html* content into whatever
          file name you specified.

    - solution:
        wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" [rpm file]
