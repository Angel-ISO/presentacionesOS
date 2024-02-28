@echo off
:menu
cls
echo ==============================
echo MENU DE COMANDOS
echo ==============================
echo 1. Mostrar procesos en ejecucion (top)
echo 2. Mostrar procesos de manera interactiva (htop)
echo 3. Traer proceso al primer plano (fg)
echo 4. Ejecutar proceso en segundo plano (bg)
echo 5. Mostrar trabajos en segundo plano (jobs)
echo 6. Mostrar PID de un proceso (pidof)
echo 7. Mostrar información detallada sobre los procesos (ps f)
echo 8. Prioridad de procesos (nice, renice, chrt)
echo 9. Finalizar proceso (kill, killall, pkill)
echo 10. Salir
echo ==============================
set /p opcion="Seleccione una opcion: "
if "%opcion%"=="1" goto top
if "%opcion%"=="2" goto htop
if "%opcion%"=="3" goto fg
if "%opcion%"=="4" goto bg
if "%opcion%"=="5" goto jobs
if "%opcion%"=="6" goto pidof
if "%opcion%"=="7" goto psf
if "%opcion%"=="8" goto prioridad
if "%opcion%"=="9" goto finalizar_proceso
if "%opcion%"=="10" exit
echo Opcion no valida, presione Enter para volver al menu.
pause >nul
goto menu

:top
cls
echo ==============================
echo Comando top - Mostrar procesos en ejecucion
echo ==============================
echo.
echo Ejemplo:
echo Muestra los procesos en ejecucion ordenados por uso de CPU y memoria.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo  0 PID     USER    PR  NI  VIRT  RES  SHR S %CPU %MEM     TIME+ COMMAND
echo  1 root      20   0  167828  3256  2628 S  0.0  0.1   0:00.12 systemd
echo  2 root      20   0       0     0     0 S  0.0  0.0   0:00.02 kthreadd
echo  3 root      20   0       0     0     0 S  0.0  0.0   0:00.17 ksoftirqd
echo.
pause
goto menu

:htop
cls
echo ==============================
echo Comando htop - Mostrar procesos de manera interactiva
echo ==============================
echo.
echo Ejemplo:
echo Muestra una interfaz interactiva con informacion detallada de los procesos en ejecucion.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo  1  [^| ^|^|^|         0.0%]    Tasks: 1, 2 thr; 1 running
echo  2  [^| ^|^|          0.0%]    Load average: 0.00 0.00 0.00
echo  Mem[^| ^|^|^|        25.2M/985.5M]   Uptime: 00:00:12
echo  Swp[^|           0K/0K]        PID  USER     PRI  NI  VIRT   RES   SHR   CPU%  MEM%   TIME+  Command
echo  1  [^| ^|^|          0.0%]        1  root      20   0   167828  3256  2628   0.0   0.1   0:00.12 systemd
echo.
pause
goto menu

:fg
cls
echo ==============================
echo Comando fg - Traer un proceso al primer plano
echo ==============================
echo.
echo Ejemplo:
echo Trae el proceso de numero de trabajo 1 al primer plano.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo [1]+  Running                 xeyes
echo.
pause
goto menu

:bg
cls
echo ==============================
echo Comando bg - Ejecutar un proceso en segundo plano
echo ==============================
echo.
echo Ejemplo:
echo Ejecuta el proceso de numero de trabajo 1 en segundo plano.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo [1]+  Stopped                 xeyes
echo.
pause
goto menu

:jobs
cls
echo ==============================
echo Comando jobs - Mostrar los trabajos en segundo plano
echo ==============================
echo.
echo Ejemplo:
echo Muestra una lista de los trabajos en segundo plano.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo [1]+  Stopped                 xeyes
echo.
pause
goto menu

:pidof
cls
echo ==============================
echo Comando pidof - Mostrar PID de un proceso
echo ==============================
echo.
echo Ejemplo:
echo Muestra el PID del proceso especificado.
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo PID de xeyes: 1234
echo.
pause
goto menu

:psf
cls
echo ==============================
echo Comando ps f - mostrar información detallada sobre los procesos
echo ==============================
echo.
echo Ejemplo:
echo mostrar información detallada sobre los procesos
echo.
echo.
echo ==============================
echo Emulacion de ejecucion en Ubuntu:
echo ==============================
echo.
echo UID        PID  PPID  C STIME TTY          TIME CMD
echo root         1     0  0 16:35 ?        00:00:03 /sbin/init splash
echo root         2     0  0 16:35 ?        00:00:00 [kthreadd]
echo root         3     2  0 16:35 ?        00:00:00 [ksoftirqd/0]
echo root         5     2  0 16:35 ?        00:00:00 [kworker/0:0H]
echo ...
echo angelvm   1933  1907  0 16:38 ?        00:00:00 /usr/bin/gnome-keyring-daemon --daemonize --login
echo angelvm   1955     1  0 16:38 ?        00:00:00 /usr/bin/gnome-session --session=ubuntu
echo angelvm   2005     1  0 16:38 ?        00:00:00 /usr/bin/ibus-daemon --daemonize --xim
echo.
pause
goto menu

:prioridad
cls
echo ==============================
echo Prioridad de procesos
echo ==============================
echo.
echo Aquí puedes incluir los comandos relacionados con la prioridad de los procesos.
echo.
pause
goto menu

:finalizar_proceso
cls
echo ==============================
echo Finalizar proceso
echo ==============================
echo.
echo Aquí puedes incluir los comandos para finalizar procesos.
echo.
echo ==============================
echo Emulación de ejecución en Ubuntu:
echo ==============================
echo.
echo - nice: Cambia la prioridad de un proceso.
echo - renice: Cambia la prioridad de un proceso en ejecución.
echo - chrt: Establece la política de planificación y la prioridad de un proceso.
echo - kill: Envia una señal a un proceso especificado (terminación predeterminada).
echo - killall: Finaliza todos los procesos con el nombre especificado.
echo - pkill: Finaliza los procesos que coinciden con un patrón especificado en su nombre.
pause
goto menu