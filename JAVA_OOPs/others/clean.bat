@echo off
setlocal

echo Checking for .class files...
set count=0

for /r %%i in (*.class) do (
    set count=1
    echo Deleting "%%i"
    del "%%i"
)

if %count%==0 (
    echo No .class files found.
) else (
    echo All .class files deleted.
)

pause
