@echo off
setlocal enabledelayedexpansion
echo ----------------------------------------
echo ����ɾ����ǰĿ¼�µ����л����ļ�
echo ----------------------------------------

for /f "delims=" %%i in ('dir /s/b/a-d *.iml,local.properties') do (
  if exist %%i (  
  del /q /s %%i
  )
	
)

for /f "delims=" %%i in ('dir /s/b/ad build') do (
    echo ɾ�� %%i
    rd /s/q "%%~i"
)

rd  /s /q .idea
rd  /s /q .gradle
echo ----------------------------------------
echo ���
 
pause