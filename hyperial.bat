:: Programmed by hXR16F
:: hXR16F.ar@gmail.com, https://github.com/hXR16F

@echo off
call settings.bat

if /i "%force_colors%" equ "true" (call cl.bat --legacy) else (call cl.bat)
if /i "%utf-8%" equ "true" chcp 65001 >nul
if exist "block.chr" (for /f %%i in (block.chr) do (if not defined _b1 (set "_b1=%%i") else if not defined _b2 (set "_b2=%%i") else if not defined _b3 (set "_b3=%%i")))
setlocal EnableDelayedExpansion

if not "%time:~0,1%" equ " " (
	set "_time=%bg`white%%fg`black-%$S$T$H$H$H$S"
	set "_time.segmented=%bg`black-%%fg`white%%_b3%%_b2%%_b1%!_time!%bg`black-%%fg`white%%_b1%%_b2%%_b3%$S"
) else (
	set "_time=%bg`white%%fg`black-%$T$H$H$H$S"
	set "_time.segmented=%bg`black-%%fg`white%%_b3%%_b2%%_b1%!_time!%bg`black-%%fg`white%%_b1%%_b2%%_b3%$S"
)

set "_path=%bg`red-%%fg`white%$S$P$S"
set "_path.segmented=%bg`black-%%fg`red-%%_b3%%_b2%%_b1%!_path!%bg`black-%%fg`red-%%_b1%%_b2%%_b3%$S"
set "_input=%`r%"

prompt %_time.segmented%%_path.segmented%%_input%

if /i "%windows_terminal%" equ "true" (
	if /i "%windows_terminal.split%" equ "true" (
		start "" "wt" -p "Command Prompt" `; split-pane -H wsl.exe; focus-tab -t 0
	) else (
		start "" "wt" -p "Command Prompt"
	)
) else (
	start cmd
)

exit