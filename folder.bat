@echo off
setlocal

:: Pindah ke lokasi file .bat berada
cd /d "%~dp0"

echo ==============================
echo  🚀 Sinkronisasi Data WiFi...
echo ==============================

:: Ambil perubahan terbaru dulu (auto merge)
git pull origin main --no-edit

:: Tambahkan semua perubahan
git add .

:: Commit dengan waktu sekarang
git commit -m "Update WiFi Data %date% %time%"

:: Push ke GitHub
git push origin main

:: Popup sukses
mshta "javascript:alert('✅ Data WiFi berhasil diupload & disinkronkan!');close()"

echo Selesai ✅
pause

endlocal
exit
