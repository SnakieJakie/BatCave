@echo off


TITLE Video Audio OGG Grabber
echo Video Audio OGG Grabber, made by Jakie
echo NOTE: You will need FFMPEG to use this. Make sure FFMPEG.exe is in the same folder as this bat is.

:Select_OgVideName
echo -
echo -
set /p _OgVideoName=Name of the original video file (PUT THE FILE EXTENSION TOO!)

echo -

:Select_OggFileName
echo Name of the output OGG file?:
set /p _OggFileName=Don't put .OGG at the end of the file!!!!  


:GrabAudio
echo Ready to convert. Just waiting for your mark.
pause
ffmpeg -i %_OgVideoName% -vn -codec:a libvorbis -b:a 128k %_OggFileName%.ogg
echo Done converting the audio!
goto Done


:Done
echo -
echo We're done, go to bed.
Pause
Exit



















