::This script must run in Windows 

@ECHO OFF
IF "%1" == "h" (
	echo SINTAX: Batch_BCD
	echo   No parameters are needed
	echo   This script will create a file called responses.txt, saving the response for each simulation.
	@echo ON
	exit /B
)

SET modelo=BCD
set /a limite = "1<<30"	
for /L %%H in (1,1,%limite%) do ( 
	echo %%H
	echo %%H  >> ./responses.txt
	..\Simulador.exe Mo=%modelo% Ns=30 Bi=%%H >> ./responses.txt
	
)
ECHO ON