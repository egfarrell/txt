
# Reduce video size - great!
ffmpeg -i "Master Film - Enda Viewing(1).mp4" -vf scale=-2:480 -c:v libx264 -preset medium -crf 28 -c:a aac -b:a 96k -movflags +faststart Master_480p_crf28.mp4

# Windows exe
    https://www.gyan.dev/ffmpeg/builds/
    Download this: https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z
    # need '7z' to untar 
    # then copy 'ffmpeg.exe' to gitbash /usr/bin 
        # (need to open file explorer as Admin)

# ffmpeg create video
    - at bottom of tis file

# crush/reduce/compress video (version 1)
    # this worked nicely for ou videos
    ffmpeg -i in.mp4   -vf "scale=iw/2:ih/2"    out.mp4
    ffmpeg -i james-long-photoz.mkv   -vf "scale=iw/2:ih/2"    out.mp4
    # if "divid by 2" error
        ffmpeg -i input.mp4 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" output.mp4


# VERY USEFUL!!! SPEED UP BY 20%, and have good quality too
    ffmpeg -i in.mp4 -filter_complex "[0:v]setpts=0.8*PTS[v];[0:a]atempo=1.25[a]" -map "[v]" -map "[a]" -b:v 3000k faster.mp4

# increase audio volume by 20%
    ffmpeg -i faster.mp4 -filter:a "volume=1.2" louder.mp4
    ffmpeg -i ratio.mp4 -filter:a "volume=1.6" louder.mp4

# clean up audio
    ffmpeg -i in.mp4 -af "afftdn=nt=w" filter.mp4
    ffmpeg -i louder.mp4 -af "afftdn=nt=w" filter.mp4

    #!/bin/bash
    stub=slower
    # step 1
    ffmpeg -i ${stub}.mp4 -af "volumedetect" -vn -sn -dn -f null /dev/null
    # step 2
    ffmpeg -i ${stub}.mp4 -af "volume=8dB" -c:v copy -c:a aac -b:a 64k ${stub}_volfix.mp4

# split VIDEO into jpg (!!!!!)
    ffmpeg -i maths-history.mp4 -r 0.10 output_%06d.jpg

    - "-r n"
        - where "n" is the number of frames per second
        - 1 frame per second would be           -r 1
        - one frame every four seconds would be -r 0.25
        - one frame every ten seconds would be  -r 0.1 

# Create gif from video stills
    convert -delay 35 output*.jpg -loop 2 slicer.gif

# slow video and audio
    # slow by 30%
    # note: video = 1.3*PTS
    # note: audio = 0.7
    # In General: audio = 1 / video value
    ffmpeg -i ratio.mp4 -filter_complex "[0:v]setpts=1.3*PTS[v];[0:a]atempo=0.7[a]" -map "[v]" -map "[a]" slower.mp4

    # slow by 10%
    # note: video = 1.1*PTS
    # note: audio = 0.9
    ffmpeg -i ratio.mp4 -filter_complex "[0:v]setpts=1.1*PTS[v];[0:a]atempo=0.7[a]" -map "[v]" -map "[a]" slower.mp4

    # slow by 5%
    # note: video = 1.05*PTS
    # note: audio = 0.95
    ffmpeg -i ratio.mp4 -filter_complex "[0:v]setpts=1.05*PTS[v];[0:a]atempo=0.95[a]" -map "[v]" -map "[a]" slower.mp4


    # speed up by 20%, and have good quality too
    ffmpeg -i in.mp4 -filter_complex "[0:v]setpts=0.8*PTS[v];[0:a]atempo=1.25[a]" -map "[v]" -map "[a]" -b:v 3000k faster.mp4

    # speed up by 10%
    ffmpeg -i in.mp4 -filter_complex "[0:v]setpts=0.9*PTS[v];[0:a]atempo=1.111111[a]" -map "[v]" -map "[a]" faster.mp4


# extract audio stream (depends on file extension)
	ffmpeg -i input.flv -acodec copy output.mp3
	ffmpeg -i input.mp4 -acodec copy output.aac
    # my script:
        ~/bin/rip-audio-mp3.sh



# convert mp4/aac to mp3
    ffmpeg -i inputfile.m4a -acodec libmp3lame -ac 2 -ab 160k outputfile.mp3

# get pre-compiled static binary ffmpeg builds
    http://ffmpeg.gusari.org/static/

# ffmpeg ppa for ubuntu 14.04 trusty
    sudo apt-add-repository http://ppa.launchpad.net/mc3man/trusty-media/ubuntu
    ak <KEYNAME>
    ai ffmpeg

# REMUXING
    I usually use Handbrake when I have a video that wont
    play on some device. E.g. I have an 'mkv' but my
    Chromecast only supports 'MP4'. But you dont need
    Handbrake to convert!

    Actually you want to *'REMUX'* the video. This copies to
    a new container format without touching the underlying
    stream. Handbrake doesnt support remuxing but ffmpeg
    does.

    Remuxing works if the video and audio codecs are
    supported by your target but the *container* isnt. Its
    almost as fast as copying the file.

    Heres a script:
        for i in *mkv; do ffmpeg -i "$i" -vcodec copy -acodec copy "${i%.mkv}.mp4"; done;

# reduce/compress video size - ubuntu 16.04
    ffmpeg -i 7002_Planets_04.mp4 -strict -2 -vf scale=iw/2:-1 output.mp4
    # Where IW = Video Input Width.
    # Scale = Parameter to scale to. In this case you are
    # dividing the original size by 2 (iw/2)

# reduce/compress video size
    ffmpeg -i in.mp4 -ab 56k -ar 22050 -b 1000k -r 15 -s 1280x720 out.mp4
    ffmpeg -i Enda_Dad.mp4 -ab 56k -ar 22050 -strict -2 -b:v 1000k -r 15 -s 1280x720 out.mp4

    -b 1000k        (old ffmpeg) this is key, determines picture quality
    -b:v 1000k      (new ffmpeg) this is key, determines picture quality

    -s 1280x720     use "ffmpeg -i" to find SIZE of source video
    -vb 20M         didnt use this, might work on newer versions of 'ffmpeg'

# combine two streams (e.g. video and audio)
    ffmpeg -i video.mp4 -i audio.aac -map 0:1 -map 1:0 -vcodec copy -acodec copy out.mp4

    # If we break down the commandline here it works like this:
            -i video.mp4  -> first media file
            -i audio.aac  -> second media file
            -map 0:1      -> use the second stream from the first mediafile
            -map 1:0      -> use the first stream from the second mediafile
            -vcodec copy  -> leave the video as is
            -acodec copy  -> leave the audio as is
            newvideo      -> resulting videofile

# speed up audio tempo to 1.7
    ffmpeg_64 -i xxxxxx.mp3 -filter:a "atempo=1.7" -c:a libmp3lame -q:a 4 out.mp3

# concat mp3 audio files
	# Create a file "inputfiles.txt":
	file '/path/to/file1'
	file '/path/to/file2'
	file '/path/to/file3'
    # (dont forget the 'quotes' and the word 'file')

	ffmpeg -f concat -i inputfiles.txt -acodec copy combined.mp3

# Convert Flv To Mp3:
	ffmpeg -i input.flv output.mp3

# By Default This Will Create A 64 Kb/s File.
# You Can Declare The Audio Bitrate With -ab:
	ffmpeg -i input.flv -ab 128k output.mp3

# If The Flv Already Has Mp3 Audio,
# Then There Is No Need To Re-encode.
# you Can Just Copy The Audio Stream.
	ffmpeg -i input.flv -acodec copy output.mp3

# Dont Know **Audio Encoding** for file? Ask ffmpeg!
	ffmpeg -i inputvideo.flv

# ffmpeg create video
    http://ffmpeg.gusari.org/static/
    # get standalone ffmpeg:
        wget http://ffmpeg.gusari.org/static/32bit/ffm......
        tar xzvf ffmpeg.static.32bit.2013-03-01.tar.gz
        ./ffmpeg -i input [output options] output

    # works on my home ubuntu
        ffmpeg_32 -framerate 1/2 -pattern_type glob -i '*.jpg' -c:v libx264 out.mp4

    # create movie at
    # - 4 FRAMES per second,
    # - from all png files
        ffmpeg_64 -r 4 -pattern_type glob -i '*.png' -c:v libx264  out2.mp4

    # movie - 20MB in size
        ffmpeg_64 -r 4 -pattern_type glob -i '*.png' -vb 20M -vf "scale=640:trunc(ow/a/2)*2" -c:v libx264 helium_flash_big.mp4

# ffmpeg divide by 2 error
    # key: change the scale
        -vf "scale=640:trunc(ow/a/2)*2"

    # sample command:
        ffmpeg_64 -r 1 -pattern_type glob -i '*.jpg' -vf "scale=640:trunc(ow/a/2)*2" -c:v libx264 out.mp4
