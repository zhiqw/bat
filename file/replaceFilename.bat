@echo off
CLS
setlocal enabledelayedexpansion

@REM 中文乱码
chcp 65001

@REM 将指定字符串进行删除
echo "请输入替换字符串"
set /p sp=

@REM 计数器
set num=0

@REM 匹配文件后缀
set ext=*.mp4,*.avi,*.rmvb,*.flv

@REM 循环修改文件
for /f "delims=" %%i in ('dir /a-d/s/b  %ext%') do (
    set /a num+=1
    set filename=%%i
    set newfile=!filename:%sp%=!
    @REM move "%%i" "!newfile!"
    @REM 重定向nul 就会把子目录下的文件移动到当前目录下
    move "%%i" "!newfile!">nul
)

echo 匹配查找文件后缀为%ext%，一共有%num%个文件

pause
