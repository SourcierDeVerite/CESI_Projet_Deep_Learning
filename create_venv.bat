@echo off
setlocal

REM Vérifier si Python 3.12 est bien installé en exécutant la commande python
python --version 2>nul | findstr /r "Python 3.12" >nul
if %errorlevel% neq 0 (
    echo Erreur : Python 3.12 non trouvé.
    exit /b 1
)

REM Créer l'environnement virtuel
python -m venv venv
if %errorlevel% neq 0 (
    echo Erreur lors de la création de l'environnement virtuel.
    exit /b 1
)

REM Activer l'environnement virtuel
call venv\Scripts\activate

REM Mettre à jour pip
python -m pip install --upgrade pip
if %errorlevel% neq 0 (
    echo Erreur lors de la mise à jour de pip.
    exit /b 1
)

REM Installer les packages depuis requirements.txt
if exist requirements.txt (
    pip install -r requirements.txt
    if %errorlevel% neq 0 (
        echo Erreur lors de l'installation des requirements.
        exit /b 1
    )
) else (
    echo Fichier requirements.txt non trouvé.
)

echo Environnement configuré avec succès.

endlocal
