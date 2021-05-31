@Echo Off
set repository="https://github.com/ZrH-Source/Github-Notifier-Demo"
set iteration=100

FOR /L %%i IN (1,1,%iteration%) DO (
  echo %%i > README.md
  git add . && git commit --amend --no-edit && git push -f
  timeout /t 3
)