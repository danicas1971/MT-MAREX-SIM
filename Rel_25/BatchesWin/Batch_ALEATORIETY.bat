:: Comentario
::This script must run in Windows 

@ECHO OFF
IF "%1" == "h" (
	echo SINTAX: Batch_ALEATORIETY seconds
	echo   seconds: wait between trials. If not specified, no wait. 
	@echo ON
	exit /B
)

SET modelo=RNDG

	
for /L %%H in (1,1,2500) do ( 
	..\Simulador.exe Mo=%modelo% Ns=4 -Ob >> ./R_%modelo%_4_random.txt
	if NOT "%1" == "" timeout -T %1 /nobreak
		
)
condensador RW.aleatorio.txt
ECHO ON