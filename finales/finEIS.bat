REM Author: Eduardo Romero
REM Date: 2025-04-01
REM Description: Script para ejecutar carga y calculo EIS

@echo off
setlocal enabledelayedexpansion

REM Cargar archivo de configuración
call configuracion.bat

for /L %%d in (%DIA_INICIO%,1,%DIA_FIN%) do (
    set /A fecha=%ANHO_MES% + %%d

    echo #######################################################
    echo Ejecutando procesos para el día %%d → Fecha: !fecha!

    echo Ejecutando Carga: !fecha!
    perl cargar.pl -C0 !fecha!
    timeout /t %TIEMPO_ESPERA% /nobreak >nul

    echo Ejecutando Calculo: !fecha!
    perl calcular.pl !fecha!
    timeout /t %TIEMPO_ESPERA% /nobreak >nul
)

endlocal
