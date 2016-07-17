REM @echo off
for %%f in (*) do (
	if "%%~xf" == "" (
		mkdir "files"
		move "%%~ff" "files"
	) else if NOT "%%~nxf" == "DesktopCleaner.bat" (
		mkdir %%~xf
		move "%%~ff" "%%~xf"
	)
)
pause
for /D %%f in (*) do (
	echo %%~nxf
	IF NOT "%%~nxf" == "Desktop" (
			mkdir "Desktop"
			robocopy "%%~ff" "Desktop/%%~nxf" /E /MOVE
		) 
	)
pause