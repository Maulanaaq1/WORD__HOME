@echo off
setlocal

:: Pindah ke lokasi file .bat ini berada
cd /d "%~dp0"

:: Commit & push otomatis
git add .
git commit -m "Update WiFi Data %date% %time%"
git pull origin main
git push origin main

:: Popup sukses
mshta "javascript:alert('✅ Data WiFi berhasil diupload ke GitHub!');close()"

endlocal
exit
