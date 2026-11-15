@echo off

cd /d "C:\Users\Lenovo\OneDrive\Dokumenty\EPG XML"

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set DATUM=%%i

git add .
git commit -m "EPG aktualizace %DATUM%"
git push origin master
