@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "Shift Reduce Parser.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%cd%\src\Shift Reduce Parser.exe" >> %SCRIPT%
echo oLink.Description = "Shift Reduce Parser.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

@REM Renaming the file to add ".exe" cause I like that
rename "Shift Reduce Parser.lnk" "Shift Reduce Parser.exe.lnk"