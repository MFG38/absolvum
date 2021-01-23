@echo off

cd src
echo Compiling...
..\tools\7za a -tzip absolvum.pk3 *.* *
move absolvum.pk3 ../absolvum.pk3
goto Done

:Done
pause >nul