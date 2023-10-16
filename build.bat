ECHO OFF
cls

ECHO ===============================================
ECHO Choose an option...
ECHO ===============================================
ECHO 1, build
ECHO 2, install requirements
ECHO 3, install requirements and build
CHOICE /C:123
IF ERRORLEVEL 3 GOTO Rb
IF ERRORLEVEL 2 GOTO Ir
IF ERRORLEVEL 1 GOTO B

:B
cls
pyinstaller --onefile --noconfirm -i "icon.ico" sword.py
GOTO End

:Ir
cls
pip install -r requirements.txt
GOTO End

:Rb
cls
pip install -r requirements.txt
pyinstaller --onefile --noconfirm -i "icon.ico" sword.py
GOTO End

:End
pause