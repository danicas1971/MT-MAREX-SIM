:: Comemntario
::This script must run in Windows 

@ECHO OFF
IF "%1" == "h" (
	echo SINTAX: Batch_FIBO seconds
	echo   seconds: wait between trials. If not specified, no wait. 
	@echo ON
	exit /B
)

SET modelo=FIBO

	
for %%n in (02 04 06 08 12 16 24 32 45) do ( 
		echo N = %%n
		for /L %%i in (1,1,49) do (
			..\Simulador.exe Mo=%modelo% Ns=%%n -ti -Cs -Ex -Tx -nR -nO >> ./R_%modelo%_%%n.txt
			if NOT "%1" == "" timeout -T %
		)
)
echo 
condensador RW_FIBO.txt
ECHO ON
