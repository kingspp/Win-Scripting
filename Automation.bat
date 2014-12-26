:: Innosetup /SILENT /LOG="path"
:: Nullsoft /S
goto begin

::Disable UAC
C:\Windows\System32\cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

::Get the path for the folder
@echo off
set /p spath="Enter Source Folder: "
echo %spath%

::7zip
start /w 7z935.exe /S /LOG="E:/filename.log"

::Aimp3
start /w  Aimp.exe /AUTO="%programfiles%\AIMP3\" /SILENT 

::Anysend 
start /w anysend.exe /S

::CD Bank
start /w  cdbank.exe /S

::CCleaner
start /w  ccleaner.exe /S 

::Easus Partion Master
start /w  epm.exe /SILENT /LOG="E:/filename.log"

::FileZilla
start /w  FileZilla.exe /S 

::fing 2.2
start /w fing.exe /S

::Github
start /w Github.exe /S


::JDK
::jdk-7u51
::Path set remaining
start /w  jdk-7u51.exe /quiet

::Notepad++
start /w  npp.exe /S

::Office 2013
::Path to be set
::start /w setup.exe /adminfile config.msp

::Realtek
::TO do File path
::start /w  setup.exe /s /sms

::Ultra ISO9
start /w  ultraiso9.exe /SILENT /LOG="E:/filename.log"

::VLC 2.1.5
start /w vlc.exe /S

::Win32DiskImager
start /w  Win32DiskImager.exe /SILENT /LOG="E:/filename.log"


:begin








 