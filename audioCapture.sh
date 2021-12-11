  # you will need ffmpeg and xclip installed for the script to work               
                                                                                  
  SERVICE='ffmpeg'                                                                
  WORD=$(xclip -o -sel c) #recording will be named whatever is in the clipboard   
  SAVETO="/path/to/file"  #path where recordings will be saved    
                                                                                  
  if ps ax | grep -v grep | grep $SERVICE > /dev/null                             
  then                                                                            
      pkill ffmpeg                                                                
      #xclip $SAVETO/$WORD.mp3 #copies file to clipboard to be pasted into anki *NOT WORKING YET*
  else                                                                            
      ffmpeg -f pulse -i alsa_output.pci-0000_2a_00.4.analog-stereo -acodec libmp3lame -ab 320k $SAVETO/$WORD.mp3
  fi 
