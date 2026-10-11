Cyber Security / InfoSec / Hacking


### Podcast
- CyberWire Daily
- Darknet Diaries (by Jack Rhysider)
- Hacked
- Hacking Humans (by CyberWire)
- Security Now (by Steve Gibson & Leo Laporte)
- Smashing Security (Graham Cluley & Carole Theriault)


YouTube channels like IppSec, John Hammond, or The Cyber Mentor 

Learn Coding
Python https://imp.i384100.net/PythonCrashCourse

Other Cybersecurity Certification Study Resources

CISSP Study Guide - https://amzn.to/3LmjOLM
CISSP Practice Tests - https://amzn.to/3oreDRO
Security+ Study Guide - https://amzn.to/3mTGPwg
A+ Study Guide - https://amzn.to/3KWS27n




### Tips
Coursera Plus: https://imp.i384100.net/courseraplusmadhat

Google Certifications
IT https://imp.i384100.net/GoogleITSupportCert
Cybersecurity https://imp.i384100.net/GoogleCybersecurityCert

CompTIA
Security+ https://www.comptia.org/certifications/security

TryHackMe Certifications
SOC Level 1 https://tryhackme.com/r/path/outline/soclevel1
SOC Level 2 https://tryhackme.com/r/path/outline/soclevel2

TCM Security Certifications
PJSA (renamed PSAA) https://certifications.tcm-sec.com/psaa/




### Michael Gillespie: anti-hacker
    - He cracks ransomware for free, member of the "Ransomware
      Hunting Team"
    - https://www.theguardian.com/technology/2022/oct/04/ransomware-hunters-the-self-taught-tech-geniuses-fighting-cybercrime
    - They hang out in the Bleeping computer forums
      https://www.bleepingcomputer.com/
    - “I think we’re all kind of misfits,” said team member
      Fabian Wosar, a high school dropout who grew up in Germany
      but now lives and works outside London. 
    - Wosar is Gillespie’s mentor and, along with him, the team’s
      foremost codebreaker. “We all have weird quirks that
      isolate us from the normal world but come in handy when it
      comes to tracking ransomware and helping people. That’s why
      and how we work so well together. You don’t need
      credentials, as long as you have the passion and the drive
      to teach yourself the skills required.”
    - This is an edited extract from The Ransomware Hunting Team:
      A Band of Misfits' Improbable Crusade to Save the World
      from Cybercrime, published 2022 

### Linux: 
    - old versions had backdoor (!)
    - check this...
    - Linux: old "sudo" vuln

### "Nessus"
    - Nessus is a paid vulnerability assessment tool for
      experienced security teams. Its interface is tricky to
      master.
    - It should be used in conjunction with pen testing tools,
      providing them with areas to target and potential
      weaknesses to exploit


### What does real pentest look like ?
    - Recon, exploit, write report.
    - Nessus, write report? Seen a few of those
    - Ive seen reports where companies/testers have failed to
      modify the nessus cover page. Embarassing!
    - UK is rife with that :(


### Sensitive info in the log
    - A couple of steps you can take to reduce the chances of
      accidentally putting sensitive information in a log.

    1. List all sensitive information that users in your test
       environment give to your application.
        - As part of your test procedure, search all logs for
          that information. This can be as simple as having
          a text file with all the sensitive information, and
          doing a `grep -F -f sensitive.txt` on all log files.

    2. If working in OO languages, make separate classes for
       sensitive data, such as a class 'Password', class CardNum
       for credit cards, etc
        - Make a logging method to return a placeholder string
          for these objects, such as "Password", "Credit Card
          Number", and so on.

    - reply
        - Probably better than 2 is to use actual privilege
          separation between sensitive data and as much of your
          service as possible. Handle passwords and password
          changes in a separate microservice which exchanges it
          quickly for a session cookie, so that the bulk of your
          application logic doesn't have passwords in memory at
          all. 
        - For credit card numbers, do something like Stripe where
          one API endpoint exchanges the card number for a token
          and every other endpoint just needs the token, which
          means Stripe can route that one URL to services they
          pay extra attention to.
        - This assumes passwords and credit card numbers are more
          sensitive than session cookies or tokens, which is
          usually true because people tend to share passwords
          across sites and definitely share credit card numbers
          across sites. 
        - So the risk of logging cookies/tokens is much lower.
          Also, you can revoke cookies and tokens much easier
          than forcing everyone to change passwords or credit
          cards.

### Biggest FAILS
    - Amit Serper (security researcher @ Cybereason).
    1. Building all endpoints in the company from the same image
       WITH THE SAME LOCAL ADMIN ACCOUNT USER/PASSWORD
       combination.
    2. Not putting constraints or logging around `powershell`
    3. Exposing the wrong things to the internet - i.e. expose
       the entire company's SMB server to the outside world
       (WHY??? THIS IS HOW YOU GET WANNACRY)

    - Another viewpoint:
    1.  Not putting preventative controls on all systems, for
        example: AV not being installed on a system
    2.  Every user has local admin. I mean, does the finance or
        marketing team really need local admin?
    3.  Patching patching patching. Why are is there old versions
        of Flash, Java, IE, etc???

### obselete practices
    - I'd say traditional AntiVirus (signature based) are already
      obsolete ...
    - Firewalls and other network security products seem to be
      easily bypassed nowadays too.
    - Hackers are using "features" of operating systems (such as
      powershell on windows) as full blown attack/hacking tools
    - I'd say every security product should do some sort of
      _behavioral analysis_ or it'll fail...

### Hacker Mindset
    - no need to always look for the magic buffer overflow!
    - Confused deputy: can we trick the browser/server into
      misuing their legitimate authority

### liveoverflow game hack
    - saved 2 copies: saved-game1, saved-game2
    - look at contents
        - hexdump -C saved-game1 | head
        - both saved games shared the first `24` bytes
    - examine bytes ('binwalk')
        - python /usr/local/bin/binwalk saved-game1
    - binwalk recognised `78 da`
        - '78' is the magic hex number for zlib:
        - 'da' is the 'best compression' option
    - now use `dd` to rip out everything after the first `24`
      bytes
      - dd if=saved-game1 bs=1 skip=24 > saved1.zlib
        - `if` = input file
        - `bs` = block size
    - then use openssl to uncompress the 'zlib' and he had json
      data!

### Hot Plug
    - move computer without powering down

### Juice Jacking
    - malware installed on your device via a USB charging port,
      and all your data covertly copied.

### Typical Job Advert
    Essential:
    -  1+ years of experience performing network, web / application and wireless
       penetration testing including exploitation.
    -  Demonstrable skills in common types of penetration testing such as
       web/application and infrastructure testing, wireless network testing,
       VoIP, firewall rule set review.
    -  Hands-on experience with software security testing and common testing
       tools like Appscan, WebInspect, Fortify, etc
    -  Experienced with tools such as Burp/Paros/Proxy tools, nmap, Nessus,
       Metasploit, Backtrack, Kali, SQL Ninja and various hacking tools.
    -  Experience with penetration testing frameworks
    -  Ability to do manual penetration testing/validation and not rely on
       automated scanners.

    Desirable:
    -  Technical certifications such as: OSCP, OSCE, GWAPT, GPEN,
       GCIH, CISSP, CISA, CISM, CEH, CHECK, CREST, TIGET SST
    -  PCI/DSS (Payment Card Industry Data Security Standard)
    -  Reverse engineering, binary analysis, antivirus avoidance,
       exploit development.
    -  Advanced understanding of security architecture and
       related components.
    -  Advanced understanding of Application Security and
       techniques to mitigate threats in application code and
       functions.
    -  Proven experience across consultancy, service provider and
       end user environments.

    - Any Penetration Testing Certificate: CREST, OSCP, CTM etc.
    - Experience with penetration testing tools: burp, hydra , dirb, nmap,
      metasploit, nikto, aircrack-aireplay-airdump, sqlmap, wireshark

### O'Reilly Talk - 2016 (Chris Martin, LogRhythm)
    - "Intrusion != breach"
    - false positives , false negatives
    - context for information... eg USA company with logins from middle east?
    - threat list of ip addresses - check against logs

    - correlations
    - playbooks
    - honeypots -> high quality signals

    - SAN paper -> "whos using security intelligence and how"
    - network: one machine speaking excessively to other machines
    - threshold -> see multiple high value events on a single host ⇒ targetted attack
    - phishing attack: "endpoints" - not as well monitored. What are "endpoints"?

    - manual response
    - automated response -> disable user account, isolate machine on the network

    - logs: how long to you keep them?
    - logs: time-zones sychronised. UTC?
    - logs: siem sits on top of log management. extract userid, ip address, process

    - 99% of breaches - "there was a patch out but..."

    - endpoints (devices): $MY_IMAGES/cs/cyber/endpoint-analytics.jpg
    - Security "posture" / maturity level: $MY_IMAGES/cs/cyber/security-posture.jpg

### Third party risks
    - Home-Depot was breached because 3rd party supplier
      credentials stolen
    - Board of directors: let's go cloud! its cheaper.
        - CISO: "how can I protect what I dont see?"
    - "risk tolerance" of company. 
        - `Risk = vulnerability * Threat likelihood * cost of Impact`
    - "shadow IT" that your employees access. can go online and
      buy with credit card. eg Dropbox, Gmail, Python-anywhere(!)
    - 3rd party vendors: sign a legal agreement "vendor risk
      toll-gate"

### Data Science beyond operations (Jay Jacobs)
    - he used hierarchical clustering to group security incidents
      - (eg point-of-sale smash and grab, atm tampering etc)
    - measure attack surfaces: number of services presented to
      the internet

### detecting anomalies at scale (Jeff Henrikson)
    - creating models which are based on assumptions... note: "only humans make assumptions"
    - Intrusion detection
         1.  log data
         2.  configure rules for current processes
         3.  Human awareness: examine alarms and logs
         4.  Quick action taken (eg de-authorise). This is often a "breaking" action. Hurts innocent users
         5.  Re-authorise once human awareness deems longer-term mitigation is adequate
         -   Sometimes for high-confidence rules, we allow "2" to trigger "4" without human
             intervention

    - Question: how can a skilled persons behaviour be guided more effectively?
        1. Match network behaviour against localised rules
        2. Predictive modelling of aggregate network behaviour
        Hypothesis: lets see if option "2" is better

    - Interesting talk: Adam Cheyer (Siri) Strata 2016
        - building practical AI systems
        - AI: Artifical intelligence
        - "IA": intelligence Augmented

    - uses "Netflow (V5)" to mirror/capture and aggregate packets coming from many router ports
    - functional requirements:
        - produce netflow from PCAP (packet capture?)
        - score netflow for anomolies
        - control number of anomoly events brought to human experts attention (fewer false positives)

### Safari Books: CEH Course: Crypto
    - CIA
        - C: _Confidential_  : Only intended recipient reads it
        - I: _Integrity_     : Message contents havent been modified
        - A: _Authenticated_ : Sender is who they say they are

    - Encryption Types
        - Symmetric:  One Key. Encrypt & Decrypt with same key.
        - Asymmetric: Two Keys. Public, Private. Encrypt with
          public key, only private key can decrypt.

    - Definitions:
        - _Cipher_: algorithm for performing encryption + decryption.
        - _Substitution Cipher_: Replace plaintext with piece of ciphertext.
        - _Transposition Cipher_: Rearrange the plaintext.

### simplenote jottings:
    - newport talk about fails:
        - old emails in an inbox have passwords etc
        - crackstation passwords 18GB
        - nmap took down a "juniper" tcp setup (was running at 90%)

### (UART) hack printer motherboard
    - Universal Asynchronous Receiver/Transmitter (UART)
    - Joint Test Action Group (JTAG)
    - interfaces that allow recovery and/or debugging of a
      device (e.g. when deploying firmware)

### public wifi
    - WIFI receiver - _monitor mode_: pick up any packets
    - he bought a wifi dongle from Amazon
    - hooked the receiver to KALI linux in a VM
    - using 'wireshark' etc saw urls and images people were
      viewing

### hack
    - https://samsclass.info/127/127_S18.shtml
    - kahoots
    - nice big endian little endian
    - key idea for exploits: control the EIP register, cos you
      take over the program flow


### XlogicX
    - Assembly language is too high
    - This is absolutely brilliant and could be leveraged to
      evade pattern/signature based detection, if altering enough
      the binaries.

### Career Tips
    - Application Security Engineer here. For a developer I would
      recommend the OSWE certification which takes a more
      code-centric approach and resources such as
      https://portswigger.net/web-security and The Art of
      Software Security Assessment book.
    - You can also leverage your DevOps experience for learning
      about server, app and cloud misconfigurations and their
      impact on security.
    - The demand for network security is not as high as for
      appsec people and I personally don't see network security
      as very rewarding (intellectually and financially).
    - For the Pentesting route I recommend trying some HackTheBox
      and watching Ippsec's channel
      https://www.youtube.com/channel/UCa6eh7gCkpPo5XXUDfygQQA
    - OSCP is fine, but it is a beginner certification and
      definitely not enough for getting a Pentest job.

### Threat modelling (given up)
    - Ive mostly _given up_ on threat modelling as a solution,
      even after building a tool from scratch and using it in
      organizations, and now only do it privately on my own
      stuff, but the reason might be a fresh perspective.
    - The basic problem is that the demand for security stems
      almost exclusively from compliance because compliance
      transfers risk out of the project and onto the
      standard/model. 
    - The idea of thinking through risks and hypotheticals and
      leaving a paper trail that you have acknowledged them
      basically converts theoretical risk into real liability
      within the project. 
    - In an ideal world of individual ownership and goodness,
      this means the incentives are aligned to create a good
      product, but in the real world of organizations, you've
      reduced the flexibility of the business to manage that
      risk, which means to take the risk and respond to it on the
      fly as it looks like it becomes realized. 
    - By problematizing the risk instead of managing it, you have
      destroyed potential value. Threat modelling is the exercise
      of problematizing risk.
    - This is why the threat model is often the elephant in the
      room. Almost nobody in business wants to have the
      "negative" conversation about whether to block law
      enforcement (foreign or domestic), surveillance on users,
      protect against data snooping by technical staff (which is
      often a platform perk and feature), or institutional
      privacy violations and other obvious threats that a threat
      modelling exercise addresses. 
    - A business PM won't problematize those things because it
      will demand a solution that gets in their critical path.
      The best they can do is manage it, which means orienting
      themselves to risk and being ready to respond.
    - I realize this is a 10th man view of something these very
      smart people have spent a lot of time on, but in the 25
      years I have been in the field, I have come to the
      conclusion that security people are essentially
      environmentalists and activists trying to make a case for
      internalizing an exogenous problem and cost, and the only
      way to get traction for it is to produce either low-level
      discretionary developer tools, or generate data that
      supports the conversations and provides that flexibility in
      a business' attitude to risk. 
    - Threat modelling is super powerful, but as a forcing
      function it can destroy value, and this is why it has
      encountered so much resistance. 
    - All manifestos are quixotic, and that is why I think this
      one may also be.
    - I have found that the real value of a threat model is
      defining the business model for a security product, where
      the threat model is the business case for a product, but
      that product needs the above features, and to not be
      a solution to succeed. The security product provides either
      compliance or data for the threats you derive from your
      modelling exercise, and it must either transfer risk to
      a model or provide data to manage. If it leaves
      responsibility in the project, like threat modelling, it's
      going to fail.


### files
    - lifeoverflow Web Hacking          ./liveoverflow-web-hacking.md
    - lifeoverflow binary hacking       ./liveoverflow-binary-hacking.txt
    - interview questions:              $MY_IMAGES/cs/cyber/infosec-questions.jpg

### accounts / testing centres
    - SANS GPEN                                  https://www.giac.org/certification/penetration-tester-gpen?msc=giac-focus-area
    - Sans UK                                    https://www.sans.org/
    - CISSP    (user: farree25) (management?)    https://www1.pearsonvue.com/testtaker/signin/SignInPage/ISC2
    - BCS CISM (user: farree25bcs) (management?) https://www1.pearsonvue.com/testtaker/signin/SignInPage/bcs
    - CompTIA  (user: ef.tools@...)              https://login.comptia.org/login

### Certification / Qualifications
    - CompTIA Certification Map              https://certification.comptia.org/certifications/which-certification
    - CompTIA Study books                    https://www.comptia.org/training/books
    - CompTIA Cybersecurity Analyst CSA+     https://www.oreilly.com/videos/comptia-cybersecurity-analyst/9780137432110/
    - CompTIA Reddit Resources               https://www.reddit.com/r/CompTIA/comments/i7hx4t/master_list_i_compiled_and_ranked_every_major/
    - GIAC Certified Incident Handler (GCIH) https://www.giac.org/certification/certified-incident-handler-gcih
    - blogger discusses Certs                https://fsmontenegro.wordpress.com/2016/01/03/professional-certifications-information-asymmetry/
    - Tandon NYU bridge program              http://engineering.nyu.edu/academics/online/programs/bridge
    - MSc InfoSec Distance (London)          http://www.londoninternational.ac.uk/infosec
    - OSCP                                   https://www.offensive-security.com/pwk-oscp/
    - OSCP review                            https://startacybercareer.com/oscp-worth-it-cost-comparision-benefits/
    - CISSP                                  https://www.isc2.org/Certifications/CISSP#
    - CEH Certified Ethetical Hacker         https://www.eccouncil.org/programs/certified-ethical-hacker-ceh-practical/
    - OWSE Web Certified                     https://www.offensive-security.com/awae-oswe/
    - UK CREST Overview                      https://www.crest-approved.org/professional-qualifications/certification-equivalency-recognition-programmes/index.html
    - UK CREST CPSA Security analyst         https://www.crest-approved.org/examination/practitioner-security-analyst/index.html
    - UK CREST Pen tester CRT                https://www.crest-approved.org/examination/registered-tester/index.html
    - UK CREST review                        https://limbenjamin.com/articles/crest-cpsa-review.html
    - UK ACreddited training                 https://apmg-international.com/product/ncsc-certified-training
    - UK Gov official certification          https://www.ncsc.gov.uk/section/products-services/ncsc-certification
    - UK Gov Check provider                  https://www.ncsc.gov.uk/information/become-a-check-provider
    - Cyber Scheme team member CSTM          https://www.thecyberscheme.org/cyber-scheme-team-member-cstm-exam/
    - TigerScheme Qualifications             https://www.tigerscheme.org/
    - Personal opinion on certification      https://github.com/leostat/HugoNecurity/blob/master/content/netsec/2018-08-30-Exams-and-Training.md
    - Personal opinion on certification      $MY_NOTES/cs/misc/cyber/opinion-INFOSEC-exams-certs.txt

### Books:
    - Security in Computing, 5th Edition https://www.amazon.co.uk/Security-Computing-Charles-P-Pfleeger/dp/0134085043
    - Cyber Security Canon:              https://cybercanon.paloaltonetworks.com/
    - Cyber Security Canon: good review  https://researchcenter.paloaltonetworks.com/2014/11/cybersecurity-canon-practice-network-security-monitoring/
    - Basics hacking                     https://www.amazon.com/Basics-Hacking-Penetration-Testing-Second/dp/0124116442
    - pen testing (Georgia weidman)      https://www.amazon.com/Penetration-Testing-Hands-Introduction-Hacking/dp/1593275641/

### Courses:
    - Swedish masters InfoSec (!!!!)                                    https://www.ltu.se/edu/program/FMISA/FMISA-Informationssakerhet-master-1.76734?l=en
    - intro to siem                                                     https://www.cybrary.it/0p3n/introduction-to-siem/
    - SEC504: Hacker Tools, Techniques, Exploits, and Incident Handling https://www.sans.org/course/hacker-techniques-exploits-incident-handling
    - CCNA Networks                                                     https://www.youtube.com/playlist?list=PLmdYg02XJt6QRQfYjyQcMPfS3mrSnFbRC
    - Australia Distance IT Masters                                     https://www.itmasters.edu.au/about-it-masters/free-short-courses/
    - Georgia Tech - Information Security                               https://www.udacity.com/course/intro-to-information-security--ud459
    - Waterloo University course                                        https://crysp.uwaterloo.ca/courses/cs458/F16-material/home.shtml
    - HN: Open Source Security Training                                 http://opensecuritytraining.info
    - HN: Open Source Security Training                                 http://opensecuritytraining.info/External_Resources.html
    - African Man - good lecture                                        https://www.cybrary.it/catalog/
    - Helsinki University (F-secure, Mikko Hypponen)                    https://cybersecuritybase.mooc.fi/
    - Helsinki University (F-secure, Mikko Hypponen)                    https://www.helsinki.fi/fi/unitube/video/87c5d0f3-1e6b-40c6-af08-cd1f2e0f77a2
    - MIT 6.858 - Computer Systems Security                             https://css.csail.mit.edu/6.858/2022/
    - IMMERSIVE LABS, free for students                                 https://www.immersivelabs.com/digital-cyber-academies/

### links
    - matrix.org hacked... some ssh forwarding tips        https://news.ycombinator.com/item?id=19642554
    - check for ipleaks                                    https://ipleak.net/
    - Cybok security knowledge                             https://news.ycombinator.com/item?id=17073294
    - subdomain takeover (frequent prob on hackerone)      https://news.ycombinator.com/item?id=17020944
    - learn electronics                                    https://news.ycombinator.com/item?id=16775744
    - Confused Deputy                                      https://en.wikipedia.org/wiki/Confused_deputy_problem
    - LIVEOVERFLOW infosec channel                         https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w/featured
    - RTFM: Red Team Field Manual                          https://www.amazon.de/Rtfm-Red-Team-Field-Manual/dp/1494295504
    - CTF time (hacker challenges)                         https://ctftime.org/
    - CTF reddit open to all                               https://www.reddit.com/r/OpenToAllCTFteam/
    - web apps pen testing info                            https://news.ycombinator.com/item?id=16728207
    - Security Tube                                        http://www.securitytube.net/
    - Pentester Academy                                    https://www.youtube.com/channel/UChjC1q6Ami7W0E71TzPZELA/featured
    - Pentester Academy                                    http://www.pentesteracademy.com/
    - learning path for newbies                            https://pentesterlab.com/bootcamp
    - osquery                                              https://osquery.io/
    - reddit news                                          https://www.reddit.com/r/netsecstudents/
    - beginners                                            https://s3ctur.wordpress.com/2017/06/19/breaking-into-infosec-a-beginners-curriculum/
    - build virtual machine labs                           https://www.amazon.com/Building-Virtual-Machine-Labs-Hands/dp/1546932631
    - OSCP-Survival-Guide                                  https://github.com/frizb/OSCP-Survival-Guide
    - Reddit: AMA with cyber professionals                 https://www.reddit.com/r/IAmA/comments/6ep25k/were_a_group_of_infosec_professionals_hackers/
    - jobs                                                 https://www.cybersecurityjobsite.com/jobs/
    - Pen testing                                          https://www.safaribooksonline.com/library/view/security-penetration-testing/9780134833989/
    - SIRA                                                 https://www.societyinforisk.org
    - monitor logs for hack attempts                       https://news.ycombinator.com/item?id=17014818
    - Web security resources                               https://portswigger.net/web-security
    - HN learning recommendations                          https://news.ycombinator.com/item?id=17563857
    - HN learning recommendations 2                        https://news.ycombinator.com/item?id=30471631
    - OWSAP top 10 risks                                   https://owasp.org/www-project-top-ten/
    - eJPT Junior pen tester, better than Comptia pentest+ https://elearnsecurity.com/product/ejpt-certification/
    - _Great review_: OSCP versus ejpg                     https://www.reddit.com/r/oscp/comments/ho0j5z/oscp_vs_ecppt_my_experience_with_both/
    - hacker videos: Ippsec                                https://www.youtube.com/channel/UCa6eh7gCkpPo5XXUDfygQQA
    - hacker videos: Ippsec Hackthebox                     https://www.youtube.com/c/ippsec/featured
    - hacker videos: Hackersploit                          https://www.youtube.com/c/HackerSploit
    - hacker videos: John Hammond                          https://www.youtube.com/channel/UCVeW9qkBjo3zosnqUbG7CFw
    - Vulnhub                                              https://www.vulnhub.com/
    - TCM Security courses                                 https://academy.tcm-sec.com/
    - Github: PayloadsAllTheThings                         https://github.com/swisskyrepo/PayloadsAllTheThings
    - Searchsploit                                         https://www.exploit-db.com/searchsploit
    - Baldoyle Cyber:                                      https://baldoyletrainingcentre.ie/our-courses/?sfcw-courseId=340193
    - HN: exec a new process with exec file                https://news.ycombinator.com/item?id=33445368
    - handy utility: osquery                               https://osquery.io/
    - Michael Gillespie Randsomware cracker                https://github.com/Demonslay335

