@echo off
:menu
cls
echo ==============================
echo MENU DE COMANDOS
echo ==============================
echo 1. Mostrar lista de procesos (tasklist)
echo 2. Mostrar lista de procesos utilizando WMI (wmic process)
echo 3. Mostrar lista de procesos con PowerShell (Get-Process)
echo 4. Detener un proceso con PowerShell (Stop-Process)
echo 5. Abrir el Administrador de Tareas (taskmgr)
echo 6. Terminar un proceso (taskkill /F)
echo 7. Terminar un proceso por nombre de imagen (taskkill /IM)
echo 8. Terminar un proceso por ID de proceso (taskkill /PID)
echo 9. Salir
echo ==============================
set /p opcion="Seleccione una opcion: "
if "%opcion%"=="1" goto tasklist
if "%opcion%"=="2" goto wmic_process
if "%opcion%"=="3" goto Get-Process
if "%opcion%"=="4" goto Stop-Process
if "%opcion%"=="5" goto taskmgr
if "%opcion%"=="6" goto taskkill_F
if "%opcion%"=="7" goto taskkill_IM
if "%opcion%"=="8" goto taskkill_PID
if "%opcion%"=="9" exit
echo opcion no válida, presione Enter para volver al menu.
pause >nul
goto menu

:tasklist
cls
echo ==============================
echo Comando tasklist - Mostrar lista de procesos
echo ==============================
echo.
echo Ejemplo:
echo Muestra una lista detallada de todos los procesos en ejecucion.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo Imagen                   PID     Nombre
echo ============================== 
echo taskhost.exe            1024    Host de Tareas de Windows
echo svchost.exe             1140    Procesos del Servicio y Controlador
echo explorer.exe            1432    Explorador de Windows
echo.
pause
goto menu

:wmic_process
cls
echo ==============================
echo Comando wmic process - Mostrar lista de procesos utilizando WMI
echo ==============================
echo.
echo Ejemplo:
echo Muestra una lista detallada de todos los procesos en ejecucion utilizando WMI.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo Caption                  ProcessId  CommandLine
echo ==============================================
echo taskhost.exe             1024       C:\Windows\system32\taskhost.exe
echo svchost.exe              1140       C:\Windows\System32\svchost.exe -k DcomLaunch
echo explorer.exe             1432       C:\Windows\Explorer.EXE
echo.
pause
goto menu

:Get-Process
cls
echo ==============================
echo Comando Get-Process - Mostrar lista de procesos con PowerShell
echo ==============================
echo.
echo Ejemplo:
echo Muestra una lista detallada de todos los procesos en ejecucion utilizando PowerShell.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo Handles  NPM(K)    PM(K)      WS(K)     CPU(s)   Id  SI  ProcessName
echo ============================================================
echo 329      17        5428       13436     22.14    2884  0   chrome
echo 141      13        3376       9264      5.63     1284  0   explorer
echo 177      15        3984       12724     3.75     3008  0   notepad
echo.
pause
goto menu

:Stop-Process
cls
echo ==============================
echo Comando Stop-Process - Detener un proceso con PowerShell
echo ==============================
echo.
echo Ejemplo:
echo Detiene un proceso específico utilizando PowerShell.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo Se ha detenido el proceso "notepad".
echo.
pause
goto menu

:taskmgr
cls
echo ==============================
echo Comando taskmgr - Abrir el Administrador de Tareas
echo ==============================
echo.
echo Ejemplo:
echo Abre el Administrador de Tareas de Windows.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo Abriendo el Administrador de Tareas...
start taskmgr
echo.
pause
goto menu

:taskkill_F
cls
echo ==============================
echo Comando taskkill /F - Terminar un proceso
echo ==============================
echo.
echo Ejemplo:
echo Termina un proceso por el nombre del proceso.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo El proceso "notepad.exe" se ha terminado.
echo.
pause
goto menu

:taskkill_IM
cls
echo ==============================
echo Comando taskkill /IM - Terminar un proceso por nombre de imagen
echo ==============================
echo.
echo Ejemplo:
echo Termina un proceso por el nombre de imagen.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo Se ha terminado el proceso "notepad.exe".
echo.
pause
goto menu

:taskkill_PID
cls
echo ==============================
echo Comando taskkill /PID - Terminar un proceso por ID de proceso
echo ==============================
echo.
echo Ejemplo:
echo Termina un proceso por el ID de proceso.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Windows:
echo ==============================
echo.
echo El proceso con el ID 1234 se ha terminado.
echo.
pause
goto menu
