@echo off


TITLE Video File to IVF Converter
echo Video File to IVF Converter, made by Jakie
echo NOTE: You will need FFMPEG to use this. Make sure FFMPEG.exe is in the same folder as this bat is.

:Select_OgVideName
echo -
echo -
set /p _OgVideoName=Name of the original video file? (PUT THE FILE EXTENSION TOO!)

echo -

:Select_VideoFinalName

echo Output name of the IVF?
set /p _VideoFinalName=Don't put .IVF at the end of the file!!!!  



:Convert_IVF
echo Ready to convert. Just waiting for your mark.
pause
ffmpeg -i %_OgVideoName% -an %_VideoFinalName%.ivf 
echo Done converting the video!

:Done
echo -
echo We're done, go to bed.
Pause
Exit


















