
Mobile useragent
Mozilla/5.0 (Android 13; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0

### Firefox "about" locations
    - about:profiles
    - about:policies
    - about:support
    - about:networking
    - about:processes


### about:processes 
    - kill whichever subprocess is using the most memory.
    - Sometimes it's the main process but usually it's a site.
      Like "YouTube"!

### Search youtube: FF keyword
    - https://duckduckgo.com/?q=site%3Ayoutube.com+%s

### See preferences!
    cat ~/.mozilla/firefox/*.default*/prefs.js

 
### Firefox custom keyboard shortcuts
    - ~/dotfiles/ini/keyd/README
    - $MY_NOTES/cs/misc/firefox-keyd.txt
    - also:
    - (old) $MY_NOTES/cs/misc/archive/ff-fx-autoconfig.txt

### Portable Firefox ESR: Disable updates
    - user_pref("app.update.enabled", false);
    - user_pref("app.update.auto", false);
    - user_pref("app.update.service.enabled", false);
    - user_pref("app.update.staging.enabled", false);
    - user_pref("app.update.url", "");
    - user_pref("app.update.channel", "esr");

### gpt recommended settings

browser.cache.disk.enable → true
browser.cache.disk.capacity → 256000
browser.sessionstore.restore_on_demand → true
browser.sessionstore.restore_tabs_lazily → true
network.http.max-persistent-connections-per-server → 6
places.history.expiration.max_pages → 10000 (integer)

media.videocontrols.picture-in-picture.enabled = false
media.videocontrols.picture-in-picture.video-toggle.enabled = false
media.videocontrols.picture-in-picture.allow-overrides = false

    - ### fewer content processes
        - about:preferences → General → Performance
        - Uncheck “Use recommended performance settings”
        - Set “Content process limit” to 2 (or even 1 if you don’t use many tabs at once)
        - Underlying pref (if you want to do it directly):
            - dom.ipc.processCount → 2

### Handy Firefox settings

    - stop youtube picture-in-picture
        - dom.picture_in_picture.enabled
        - UBlock filter rule:
            www.youtube.com##.ytdMiniplayerPlayerContainerHost
            www.youtube.com##.ytdMiniplayerComponentDraggable.ytDraggableComponentHost
            www.youtube.com##.ytdMiniplayerComponentContent

        media.autoplay.blocking_policy = 2
        media.autoplay.allow-extension-background-pages = false
        media.autoplay.block-event.enabled = true
        media.block-autoplay-until-in-foreground 

    - dom.private-attribution.submission.enabled
    - false

    - FIREFOX PDF VIEWER:
        - pdfjs.spreadModeOnLoad
            - 0 = do not show side-by-side pages

        - pdfjs.sidebarViewOnLoad
            - 0 = Do not display sidebar
            - 1 = Show thumbnails
            - 2 = Show outline
            - 3 = Show attachments

        - pdfjs.defaultZoomValue
            - page-width

    - stop url autocoplete
        - browser.urlbar.autofill = false

    - Stop auto updates
        - Use ESR version https://www.mozilla.org/en-US/firefox/all/#product-desktop-esr

    - Settings > Privacy & Security > Permissions > Autoplay > Block Audio and Video

    - Disable ad measurement
        dom.private-attribution.submission.enabled = false

    - pdfjs.viewerCssTheme
        - 0 = automatic (system theme)
        - 1 = Light
        - 2 = Dark

    - disable full screen animation
        - Create new:
        - ui.prefersReducedMotion

    - DNS leaks (webrtc): 
        - (note: this affects "jitsi" etc)
        - media.peerconnection.enabled = false

    - supress update nag:
        - app.update.checkinstalltime = false

    - supress warnings about slow script:
        - dom.ipc.processHangMonitor   = false
        - dom.ipc.reportProcessHangs   = false

    stop webpage nagging before leaving
    dom.disable_beforeunload = true
    dom.webnotifications.enabled = false
    dom.push.enabled = false

    extensions.screenshot.system-disabled (= false)
    reader.parse-on-load.enable = false
    extensions.pocket.enabled = false
    social.\* = false
    offline-apps.allow_by_default;false
    offline-apps.quota.warn;0
    browser.sessionstore.resume_from_crash = false

    disable location:
    geo.enabled = false

    browser.safebrowsing.downloads.enabled = false
    browser.safebrowsing.enabled = false
    browser.safebrowsing.malware.enabled = false
    services.sync.prefs.sync.browser.safebrowsing.enabled = false
    services.sync.prefs.sync.browser.safebrowsing.malware.enabled = false

    datareporting.healthreport.service.enabled, false
    datareporting.healthreport.uploadEnabled, false
    datareporting.policy.dataSubmissionEnabled, false
    toolkit.telemetry.unified, false

    old: browser.chrome.favicons = false
    browser.chrome.site_icons = false

    browser.sessionstore.max_tabs_undo    = 1
    browser.sessionstore.max_windows_undo = 0
    browser.sessionstore.interval = 3600000
    browser.sessionstore.max_resumed_crashes = 0


    -----------------------------------
    browser.cache.memory.enable = false  <-- this was good on Mam's old Dell laptop
    -----------------------------------
    browser.cache.disk.enable = false
    browser.cache.disk.smart_size.enabled = false
    browser.cache.disk.capacity = 0
    dom.storage.enabled = false  (gmx doesnt work then!)

    - OLD: home page "popups" from mozilla
        - browser.snippets.enabled = false

    - OLD: Remove "whats new" present icon
        - devtools.whatsnew.enabled = false


### Disable removal of an extension (Leechblock)
    - file: $HOME/dotfiles/ini/firefox/policies.json
    - location: C:\Program Files\Mozilla Firefox\distribution

### REMOVE ICONS: Bookmarks HTML export. 
    - Export firefox bookmarks to bookmarks.html
    - then:
        `awk '{gsub(/\sICON_URI="[^"]*"/, ""); gsub(/\sICON="[^"]*"/, ""); print}' bookmarks.html > clean_bookmarks.html`


### Firefox background grey color
    #C7CED3
    #aeb5ba

### uBlock Origin:
    - Custom GMX filter
        www.gmx.com##.content-wrapper

    - Script Blocking: "medium" mode
        https://github.com/gorhill/uBlock/wiki/Blocking-mode:-medium-mode

    - cookies popups:
        - UBLOCK ORIGIN go to settings > filters list
          > annoyances, turn on easylist-cookies.

### Firefox 80:
    - allow userChrome.css
        - in about:config
        - toolkit.legacyUserProfileCustomizations.stylesheets to true 
    - also must be the 'default-release' profile
        - /home/ef/.mozilla/firefox/u44mmgnb.default-release/chrome

### Firefox make UI more compact
    - about:config
    - uidensity change from 0 to 1

### Firefox force reader view
    - press: "ctrl+alt+r"

    - Put the following before the url:
      about:reader?url=


### edx bug
    - if geo.enabled = false, then edx won't work properly
        - (no enrol button)

### firefox (portable): windows 10 profile location
    copy my portable profile:
        {usb drive}../FirefoxPortable/Data/profile
    to:
        C:\Users\781875\AppData\Roaming\Mozilla\Firefox\Profiles\k6559759.default

### firefox: dont autoplay videos
    media.autoplay.enabled=false

### secure connection failed (ff < 44)
    security.tls.insecure_fallback_hosts

### change default zoom level (zoom out)
    layout.css.devPixelsPerPx = 1.0
    (default was -1.0 which respects system settings)

### firefox socks proxy addon
    https://p1rox.fr/socksproxy/
    settings are: 127.0.0.

### disable ADDONS signing (allow unverified)
    xpinstall.signatures.required       false

### faster smoother socks proxy
    browser.chrome.toolbar_tips  false
    image.animation_mode  none
    browser.blink_allowed  false

    network.http.pipelining              true
    network.http.pipelining.maxrequests  8
    network.http.pipelining.ssl          true
    network.http.proxy.pipelining        true

### ubuntu print page setup (page numbers)
    print.print_footerleft = &PT

### images
    permissions.default.image
    1: Allow all images to load, regardless of origin. (Default)
    2: Block all images from loading.
    3: Prevent third-party images from loading.

### custom shortcuts/keybindings
    https://github.com/Lord-Kamina/keybinder
    "Shortcut Mappings - Change (button)"
    (keyconfig 20110522 doesnt work anymore?)

### [DOESNT WORK? 2016] keyconfig 20110522
    http://mozilla.dorando.at/keyconfig.xpi
    gBrowser.mTabContainer.advanceSelectedTab(1,true);
    gBrowser.mTabContainer.advanceSelectedTab(-1,true);
    goDoCommand('cmd_scrollPageDown');
    goDoCommand('cmd_scrollPageUp');

    (hmm doesnt work, but keyconfig has a builtin for this?)
    gBrowser.removeAllTabsBut(gBrowser.mCurrentTab);

### amazon urlbar search
    type "amazon" ran a search!
    Just open the searchbar and delete amazon search engine

### 'screengrap' plugin (dont use, has add spam)
     show url when grabbing image
        Preferences -> In Image: {#DOMAIN#}

### start another profile
    firefox -P sqlite -no-remote

### open firefox profile manager
	firefox -P

### go back/forward
	Ctrl+[
	Ctrl+]

### private session
	Ctrl+Shift+P

### keep certain cookies
	- tick: 	accept cookies from sites
	- choose:   "Until I close Firefox"
	- add: 	    "Exceptions..." for sites I want to keep cookies
	- tick: 	Clear history when firefox closes
	- untick:   "active logins", "cookies" (inside clear history when firefox closes)

### show profile path (windows-r)
	%APPDATA%\Mozilla\Firefox\Profiles

### open link in new tab
    ctrl-leftclick

### Add following cookie exceptions
	gmx.com
	simple-note.appspot.com

### Firefox Portable - userChrome.css
    copy "chrome" directory
    from Dropbox to   ..\FirefoxPortable\Data\profile

### QUICK SEARCH:
  press "/"
  set preference "search when I start typing"

### NEW TAB
  - press <alt-enter> on the address bar
