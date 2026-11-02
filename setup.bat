@echo off
title CampusSubmit - Setup
set "APPDIR=%~dp0"
echo Creating a CampusSubmit shortcut on your Desktop...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ws=New-Object -ComObject WScript.Shell; $lnk=$ws.CreateShortcut((Join-Path ([Environment]::GetFolderPath('Desktop')) 'CampusSubmit.lnk')); $lnk.TargetPath='%APPDIR%index.html'; $lnk.WorkingDirectory='%APPDIR%'; $lnk.Description='CampusSubmit'; $lnk.Save()"
if errorlevel 1 (
  echo.
  echo Could not create the shortcut. You can still run start.bat or double-click index.html.
  pause
  exit /b 1
)
echo.
echo Setup complete. Double-click "CampusSubmit" on your Desktop to open the app.
echo.
pause
