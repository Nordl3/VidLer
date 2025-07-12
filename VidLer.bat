@echo off
cd /d "%~dp0"
set /p URL=Paste URL: 
"%~dp0yt-dlp.exe" ^
  -f "bv*[ext=mp4][height<=1080]+ba[ext=m4a]/b[ext=mp4]" ^
  --merge-output-format mp4 ^
  -o "Output\%%(title)s.%%(ext)s" ^
  "%URL%"
pause
