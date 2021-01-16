@echo on
set /p username=
git config --global user.name %username%
set /p useremail=
git config --global user.email %useremail%
set /p cdpath=
cd /d %cdpath% 
git init
git add .
set commit=push:%Date:~0,4%-%Date:~5,2%-%Date:~8,2%%time:~0,2%:%time:~3,2%:%time:~6,2%
set /p commit=
git commit -m "%commit%"
set /p giturl=
git remote add origin %giturl%
git push -u origin master
pause
