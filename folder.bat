@echo off
setlocal

:: Pindah ke lokasi file .bat berada
cd /d "%~dp0"

echo ==============================
echo  🚀 Update Web WiFi Word Live...
echo ==============================

:: Pastikan di branch gh-pages
git checkout gh-pages

:: Ambil update terbaru dulu (biar nyatu sama tim)
git pull origin gh-pages --no-edit

:: Tambahkan semua perubahan
git add .

:: Commit dengan waktu sekarang
git commit -m "Update Live Web %date% %time%"

:: Push ke GitHub Pages
git push origin gh-pages

:: Popup sukses
mshta "javascript:alert('✅ Web WiFi Word berhasil diupdate! Silakan refresh halaman.');close()"

echo Selesai ✅
pause

endlocal
exit
