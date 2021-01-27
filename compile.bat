@echo off

echo Remember to run cleanup_maps_folder.bat before compiling!
echo Is the project ready to be compiled?
set /p c=Enter Y to compile or N to cancel.
if /i "%c" == "Y" goto :Compile 
if /i "%c" == "N" goto :Cancel

:Compile
cd src
echo Compiling...
..\tools\7za a -tzip absolvum.pk3 *.* *
move absolvum.pk3 ../absolvum.pk3
goto Done

:Cancel
exit

:Done
pause >nul