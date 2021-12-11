# AudioCapture

A little script that can be set to a hotkey.
Script starts recording audio with FFMPEG on key press and ends when pressed again.
Names the file whatever is in the clipboard. 
I created this to quickly clip audio to import into anki for language learning as ShareX doesn't work on linux.

I'm aiming to add the feature to have file copied to clipboard so it can be pasted straight into anki once created
to increase speed of making anki cards.

setup:
1. Install xclip and ffmpeg if you don't have them already
2. Download the audioCapture.sh script
3. Change "path/to/file" in SAVETO to wherever you want the audio recordings saved 
3. Set a hotkey to the script

How I use it:
1. Copy word/sentence you want to learn so it goes into the clipboard
2. Press hotkey to start AudioCapture.sh
3. Play audio for word/sentence
4. Press hotkey again when audio ended
5. A .mp3 file will have been created called whatever was copied into the clipboard
