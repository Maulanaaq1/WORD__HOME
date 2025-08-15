@echo off
cd /d "D:\Project\WiFiWord"

git add .
git commit -m "Update data WiFi %date% %time%"
git push origin main

mshta "javascript:alert('✅ Data WiFi berhasil diupload ke GitHub!');close()"
exit
