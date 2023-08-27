@echo off
color 30
title  - https://github.com/OtaconEvil
echo Eliminando archivos temporales y cachés...

:: Borra los archivos en la carpeta %temp%
cd %temp%
del /s /q *

:: Borra los archivos en la carpeta Temp de todos los usuarios
cd C:\Users
for /d %%d in (*) do (
    if exist "%%d\AppData\Local\Temp\*" (
        cd "%%d\AppData\Local\Temp"
        del /s /q *
    )
)

echo Archivos temporales y cachés eliminados correctamente.
pause
