#!/bin/bash

# Vérifier si Python 3.12 est installé
PYTHON_VERSION=$(python3 --version 2>&1)
if [[ $PYTHON_VERSION != *"Python 3.12"* ]]; then
    echo "Erreur : Python 3.12 non trouvé."
    exit 1
fi

# Créer l'environnement virtuel
python3 -m venv venv
if [ $? -ne 0 ]; then
    echo "Erreur lors de la création de l'environnement virtuel."
    exit 1
fi

# Activer l'environnement virtuel
source venv/bin/activate

# Mettre à jour pip
pip install --upgrade pip
if [ $? -ne 0 ]; then
    echo "Erreur lors de la mise à jour de pip."
    deactivate
    exit 1
fi

# Installer les packages depuis requirements.txt
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    if [ $? -ne 0 ]; then
        echo "Erreur lors de l'installation des requirements."
        deactivate
        exit 1
    fi
else
    echo "Fichier requirements.txt non trouvé."
fi

echo "Environnement configuré avec succès."
