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

	
for /L %%H in (1,1,19) do ( 
		echo %%H Hilos
		for /L %%i in (1,1,49) do (
			echo .
			..\Simulador.exe Mo=%modelo% Ns=64 Th=%%H -ti >> ./R_%modelo%_64_%%H.txt
			if NOT "%1" == "" timeout -T %1 /nobreak
		)
)
condensador RW.RNDG.man.txt
ECHO ON















