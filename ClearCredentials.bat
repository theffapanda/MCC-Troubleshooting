@echo off
echo Deleting Xbl credentials...
for /F "tokens=1,2 delims= " %%F in ('cmdkey /list ^| findstr Xbl') do cmdkey /delete %%G
echo Xbl credentials deleted.

echo Deleting webcache files...
del /q /f "%userprofile%\AppData\LocalLow\MCC\Saved\webcache\*"
echo Webcache files deleted.

echo All tasks complete.
pause
