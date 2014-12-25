
goto begin

::Disable UAC
C:\Windows\System32\cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

::Get the path for the folder
@echo off
set /p spath="Enter Source Folder: "
echo %spath%

:begin
echo "Hello"

 