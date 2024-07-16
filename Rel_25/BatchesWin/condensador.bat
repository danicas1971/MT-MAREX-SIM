@ECHO OFF
SET fichero=%1

@IF EXIST %fichero%  (
    echo borrando fichero existente: %fichero%
    del %fichero% 
)


for %%f in (R_*.txt) do (
    echo %%f >> %fichero%
    type %%f >> %fichero%
)
del R_*.txt
echo ¡¡¡ Completed !!!
ECHO ON



