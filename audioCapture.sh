SERVICE='ffmpeg'
WORD=$(xclip -o -sel c)

 
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
   pkill ffmpeg
else
    ffmpeg -f pulse -i alsa_output.pci-0000_2a_00.4.analog-stereo -acodec libmp3lame -ab 320k AudioRecordings/$WORD.mp3
fi

