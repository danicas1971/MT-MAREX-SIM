:: Comemntario
::This script must run in Windows 

@ECHO OFF
IF "%1" == "h" (
	echo SINTAX: Batch_RNDG seconds
	echo   seconds: wait between trials. If not specified, no wait. 
	@echo ON
	exit /B
)

SET modelo=RNDG

	
for %%n in (002 004 006 008 012 016 024 032 045 064 100 128) do ( 
		echo N = %%n
		for /L %%i in (1,1,49) do (
			echo .
			..\Simulador.exe Mo=%modelo% Ns=%%n -ti -Cs -Ex -Tx -nR -nO >> ./R_%modelo%_%%n.txt
			if NOT "%1" == "" timeout -T %1 /nobreak
		)
)
condensador RW.RNDG.auto.txt
ECHO ON
