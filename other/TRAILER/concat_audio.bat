@echo off
set "INPUT_FILE=Trailer_galloping_chariot.mp3"
set "OUTPUT_FILE_M4A=Trailer_galloping_chariot_x10.m4a"
set "PLAYLIST_FILE=temp_playlist.txt"
set "LOOP_COUNT=10"

echo Generazione del file playlist temporaneo...
if exist "%PLAYLIST_FILE%" del "%PLAYLIST_FILE%"

:: Genera la lista di 10 file
for /L %%i in (1, 1, %LOOP_COUNT%) do (
    echo file '%INPUT_FILE%' >> "%PLAYLIST_FILE%"
)

echo Esecuzione della concatenazione e ricodifica (per cambiare l'impronta digitale)...
echo.

:: Esecuzione con ricodifica in AAC (M4A)
ffmpeg -f concat -safe 0 -i "%PLAYLIST_FILE%" -c:a aac -b:a 192k "%OUTPUT_FILE_M4A%"

echo.
echo Pulizia del file temporaneo...
del "%PLAYLIST_FILE%"

echo.
echo Operazione completata. Il nuovo file si chiama: %OUTPUT_FILE_M4A%
pause