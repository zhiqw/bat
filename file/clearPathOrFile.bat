@echo off

call::delfiles .DS_Store
call:delpaths .idea

:: del 删除文件
:delfiles
del /S %1
goto:eof

::清理指定目录
:delpaths
@for /r %%d in (.) do (
    if exist "%%d\%1" (
        rd /s /q "%%d\%1"
    )
)
goto:eof
