@echo off
setlocal
set "NAME=Where_Are_You_From.html"
set "PAGES=C:\Users\Sarah\Documents\GitHub\theplasmak.github.io"
set "DEST=%NAME%"

@REM Compile to local export
if not exist "export" mkdir export
call tweego -l -o "export\%NAME%" src || exit /b 1
python python_scripts/loading_screen_remover.py "export\%NAME%" || exit /b 1

@REM Copy to github.io repo
copy /Y "export\%NAME%" "%PAGES%\%DEST%" || exit /b 1

@REM Commit and push (WSL has gh credentials)
git -C "%PAGES%" add "%DEST%"
git -C "%PAGES%" commit -m "Update Where Are You From"
wsl bash -c "cd /mnt/c/Users/Sarah/Documents/GitHub/theplasmak.github.io && git push"
