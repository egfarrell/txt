vlc tips


### Anti stutter tips for ASUS + vlc / mpv
    system:
    # disable Cinnamon compositor (key fix)
    gsettings set org.cinnamon.muffin experimental-features "[]"

    # check what's active
    gsettings get org.cinnamon.muffin experimental-features

    # optional: performance governor (usually not needed now)
    sudo cpupower frequency-set -g performance

    - firefox
    media.av1.enabled → false
    media.hardware-video-decoding.enabled = true
    layers.acceleration.disabled → false
    media.ffmpeg.vaapi.enabled → true
    gfx.webrender.compositor → true
    gfx.webrender.all → true
    media.hardware-video-decoding.force-enabled → true
    media.ffmpeg.vaapi.enabled → true
    media.ffmpeg.vaapi.zero-copy → true
    layout.frame_rate -> 0

    vlc:
    Hardware decoding → VA-API video decoder via DRM
    Video output → X11 video output (XCB)
    File caching (ms) → 1000


    mpv:
    # one-liner
    mpv --hwdec=vaapi \
        --vo=gpu \
        --gpu-context=x11egl \
        --vd-lavc-dr=yes \
        --cache=yes \
        --cache-secs=20 \
        video.webm

    # recommended ~/.config/mpv/mpv.conf
    hwdec=vaapi
    hwdec-codecs=vp9,h264,hevc
    vo=gpu
    gpu-context=x11egl
    vd-lavc-dr=yes
    cache=yes
    cache-secs=20
    video-sync=display-resample
    interpolation=no

### Slow startup on Windows
    - Settings: disable 'scan for new plugins'

### Default playback speed
    Settings All - Input/Codecs - "Playback speed"

### fix grey pixelated screen
    - PREFERENCES --> Show Settings --> All
    - Input/Codecs --> [ADVANCED Section] File Caching
    - Default 300ms ; changed to 10000ms

### Change backwards jump length
    Tools >> Preferences >> (Select "All" for "Show settings") >> Interface >> Hotkeys settings

### hn subititles 
    https://news.ycombinator.com/item?id=16785273

### sync audio
    - "j": advance 50ms
    - "k": delay   50ms

### sync subtitle
    - "g": advance subtitle 50ms
    - "h": delay   subtitle 50ms

    - Another easy trick to adjust subtitle timings:
        - Press Shift+H when you hear a specific sentence
        - Press Shift+J when the sentence appears in the subtitles
        - Press Shift+K to resync the subtitles

### force subtitles down
    * in vlc preferences, show "all", under video-filters,
      enable checkbox "Video cropping filter" (don't
      forget!) [or for vlc early versions check: "Video
      Scaling filter"]
    * edit video/filters/Cropadd Padd "pixels to add to
      bottom" to "100"; and "Save".
    * Then edit "simple" preferences, Subtitles/OSD, "Force
      subtitle position", -200 px, "Save".
    * Restart VLC.

### convert mkv to mp4!
    - use "media" - "open multiple files..."
    - Click arrow on PLAY button to reveal a "convert" option
    - (use "media" - "open advanced" OLD)

### speed up mkv
    - Navigate to the following preferences group: 
        - Input / Codecs -> Video codecs -> FFmpeg.  
    - The right side of the preferences window will now change to
      "FFmpeg audio/video decoder".

    - Check the "Allow speed tricks" checkbox

    - Set the "Skip the loop filter for H.264 decoding" to "All"

### command line clvc
    cvlc --global-key-quit q --sub-autodetect-file s10.mkv
    cvlc --global-key-quit q --sub-file s10.srt s10.mkv

### install H.265 / HEVC codec Ubuntu (codec id='V_MPEGH/ISO/HEVC')
    ai vlc-plugin-libde265

### disable "building font cache msg"
    settings - all - subtitle/ODS - "Text rendering module"
        set to "Dummy font renderer"

### Playlist
    appearing in separate window?
    tick menu option "view" - "docked playlist"

### ubuntu 12.04 video driver crashing!
    Tools - Preferences - All - Video - Output modules
        Video output module -> X11 video output (XCB)

### take screenshot
    shift+s

### Close after playing
    Settings All - Playlist - "Play and exit"

### shortcut - show extended settings
	ctrl-e

### file naming system for snapshots:

	Navigate "preferences -> simple -> video"
	Prefix: $N-
	and tick sequential numbering

	$N - print full file name
    $I : title (as in DVD title number)
    $T : time code of the video


### play DVD
    Install the libdvdread4 package (no need to add third party
    repositories) via Synaptic or command line:

    (note: if you have installed ubuntu-restricted-extras
    this has already been installed automatically for you)

    sudo apt-get install libdvdread4

    Then open a terminal window and execute:
        sudo /usr/share/doc/libdvdread4/install-css.sh

    Rebooting may be necessary.
