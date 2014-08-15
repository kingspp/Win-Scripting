@echo off
Echo Script to automate Wallpaper copy, with naming the file!
set SPATH=C:\..\... rem "Set the Source path "
set DPATH=C:\..\... rem "Set the Destination path "


cd %SPATH%
copy wallpaper.bmp %DPATH%

:renameblk
SET /P var=Enter a new name for the wallpaper: 
cd %DPATH%

IF EXIST "%DPATH%\%var%.bmp" (
    Echo sorry the name already exists, Rename!
    goto renameblk
 ) ELSE ( 
    goto finish
 )


:finish
rename wallpaper.bmp "%var%.bmp"
echo Successfull!!
