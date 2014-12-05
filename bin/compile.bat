@echo off
set build_path=%1
set cache_path=%2
:: do whatever is needed for the application to run
echo Copying buildpack scripts ...
mkdir %build_path%\runner
xcopy %~dp0\..\runner %build_path%\runner\ /E
echo Done.
exit /b 0
