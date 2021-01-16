@echo on

:: 默认  user.name
for /f "tokens=1" %%i in ('git config --global user.name') do set username=%%i  
set /p username=
git config --global user.name %username%

:: 默认  user.email
for /f "tokens=1" %%i in ('git config --global user.email') do set useremail=%%i 
set /p useremail=
git config --global user.email %useremail%

:: 进入工作目录
set cdpath=%cd%
set /p cdpath=
cd /d %cdpath% 

:: git 发布
git init
git add .
set commit=push:%Date:~0,4%-%Date:~5,2%-%Date:~8,2%%time:~0,2%:%time:~3,2%:%time:~6,2%
set /p commit=
git commit -m "%commit%"
set /p giturl=
git remote add origin %giturl%
git push -u origin master

pause
