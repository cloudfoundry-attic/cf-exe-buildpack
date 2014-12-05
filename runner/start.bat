@echo off

echo "URL Access Rights:"

netsh http show urlacl 

echo "Starting the console app ..."

call %HOME%\run.bat
