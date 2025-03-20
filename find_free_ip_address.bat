@echo off
setlocal enabledelayedexpansion

:: Defina o intervalo de IPs da sua rede
set "REDE=192.168.90."
set "INICIO=2"
set "FIM=254"

echo Verificando IPs livres na rede...

for /L %%i in (%INICIO%,1,%FIM%) do ( 
    ping -n 1 -w 100 !REDE!%%i >nul
    if errorlevel 1 echo IP Disponível: !REDE!%%i
)

echo.
echo Verificação concluída.
pause