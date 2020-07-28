:: Programmed by hXR16F & Nimplex
:: hXR16F.ar@gmail.com, https://github.com/hXR16F
::                      https://github.com/Nimplex

set `r=[0m&set `b=[1m&set `u=[4m&set `i=[7m&set fg`black-=[30m&set fg`red-=[31m&set fg`green-=[32m&set fg`yellow-=[33m&set fg`blue-=[34m&set fg`magenta-=[35m&set fg`cyan-=[36m&set fg`white-=[37m&set fg`black=[90m&set fg`red=[91m&set fg`green=[92m&set fg`yellow=[93m&set fg`blue=[94m&set fg`magenta=[95m&set fg`cyan=[96m&set fg`white=[97m&set bg`black-=[40m&set bg`red-=[41m&set bg`green-=[42m&set bg`yellow-=[43m&set bg`blue-=[44m&set bg`magenta-=[45m&set bg`cyan-=[46m&set bg`white-=[47m&set bg`black=[100m&set bg`red=[101m&set bg`green=[102m&set bg`yellow=[103m&set bg`blue=[104m&set bg`magenta=[105m&set bg`cyan=[106m&set bg`white=[107m
chcp 65001 >nul
if exist "block.chr" (for /f %%i in (block.chr) do (if not defined _b1 (set "_b1=%%i") else if not defined _b2 (set "_b2=%%i") else if not defined _b3 (set "_b3=%%i")))
setlocal EnableDelayedExpansion

set "_time=%bg`white%%fg`black-%$S$T$H$H$H$S"
set "_time.segmented=%bg`black-%%fg`white%%_b3%%_b2%%_b1%!_time!%bg`black-%%fg`white%%_b1%%_b2%%_b3%$S"

set "_path=%bg`red-%%fg`white%$S$P$S"
set "_path.segmented=%bg`black-%%fg`red-%%_b3%%_b2%%_b1%!_path!%bg`black-%%fg`red-%%_b1%%_b2%%_b3%$S"
set "_input=%`r%"

setx PROMPT %_time.segmented%%_path.segmented%%_input%
start "" "installed.vbs"
