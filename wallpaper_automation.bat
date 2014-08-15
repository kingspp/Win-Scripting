@echo off
Echo Script to automate Wallpaper copy, with naming the file!
set SPATH=C:\Users\Prathyush\AppData\Local\WallpapersWide.com\DesktopSlides\2.1.1.0
set DPATH=C:\Users\Prathyush\Desktop\Wallpapers


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
