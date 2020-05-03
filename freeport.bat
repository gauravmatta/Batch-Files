@echo off
set /p port= "Please Enter the port of the process to end :"
echo To End Process for %port% please execute in Admin Mode
FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :%port%') DO echo TaskKill.exe /F /PID %%P
REM FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :8080') DO echo TaskKill.exe /F /PID %%P
REM FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :8009') DO echo TaskKill.exe /F /PID %%P