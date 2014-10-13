@echo off
cls
echo ############################
echo # Git-Initialization-Linux #
echo # -- Prathyush             # 
echo ############################
git --version

SET /P uname=Please Enter your Username:
SET /P umail=Please Enter your User Email:
SET /P repo=Please enter the location of the repo: 

git config --global user.name %uname%
git config --global user.email %umail%
git remote add origin %repo%





