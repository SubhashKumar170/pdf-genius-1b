@echo off
echo Running Challenge_1b
docker run --rm ^
  -v "%cd%/input:/Challenge_1b/input" ^
  -v "%cd%/output:/Challenge_1b/output" ^
  pdf-genius
echo.
echo ✅ Done! Check the output/output.json file.
pause
