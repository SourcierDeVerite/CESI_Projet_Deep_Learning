# Deep Learning Project with Jupyter and TensorFlow

## Description
Ce projet utilise des notebooks Jupyter pour expérimenter et entraîner des modèles de deep learning avec TensorFlow. Vous pouvez exécuter le projet localement sur votre PC ou utiliser Docker pour exploiter un GPU (si disponible).

## Prérequis

### Option 1: Exécution Locale (sans Docker)
- **Python 3.x** installé
- **Jupyter Notebook** (sera installé dans l'environnement virtuel)
- **TensorFlow** (sera installé dans l'environnement virtuel)

### Option 2: Exécution avec Docker
- **Docker** installé
- **Docker Compose** installé
- **GPU NVIDIA** (optionnel mais recommandé pour des performances optimales)
- **NVIDIA Docker Toolkit** pour utiliser un GPU avec TensorFlow (si vous avez un GPU)

## Installation et Exécution

### Option 1: Exécution locale (PC)
Pour exécuter le projet localement avec un environnement virtuel, suivez ces étapes :

1. Clonez ce dépôt :
    ```bash
    git clone https://github.com/votre-depot.git
    cd votre-depot
    ```

2. Créez et activez l'environnement virtuel :

   - Sur **Windows**, exécutez le script `create_venv.bat` :
     ```bash
     .\create_venv.bat
     ```
   - Sur **Linux/Mac**, exécutez le script `create_venv.sh` :
     ```bash
     ./create_venv.sh
     ```

3. Activez l'environnement virtuel :
   - Sur **Windows** :
     ```bash
     .\venv\Scripts\activate
     ```
   - Sur **Linux/Mac** :
     ```bash
     source venv/bin/activate
     ```

4. Lancez Jupyter Notebook :
    ```bash
    jupyter notebook
    ```

5. Ouvrez votre navigateur à l'adresse suivante :
    ```
    http://localhost:8888
    ```

### Option 2: Exécution avec Docker et GPU

1. Clonez ce dépôt :
    ```bash
    git clone https://github.com/votre-depot.git
    cd votre-depot
    ```

2. Construisez et lancez les conteneurs Docker avec Docker Compose :
    ```bash
    docker-compose up --build
    ```

3. Si vous avez un GPU NVIDIA et souhaitez l'utiliser avec TensorFlow, vérifiez que le conteneur Docker détecte bien le GPU :
    ```bash
    docker-compose -f docker-compose.gpu.yml up --build
    ```

4. Une fois que les conteneurs sont lancés, ouvrez Jupyter Notebook dans votre navigateur à l'adresse suivante :
    ```
    http://localhost:8888
    ```

## Structure du projet

- `notebooks/` : Contient les notebooks Jupyter pour l'entraînement des modèles.
- `scripts/` : Contient les scripts pour créer et activer l'environnement virtuel (`create_venv.bat` et `create_venv.sh`).
- `Dockerfile` : Définit l'image Docker pour exécuter le projet.
- `docker-compose.yml` : Fichier Docker Compose pour configurer le projet sans GPU.
- `docker-compose.gpu.yml` : Fichier Docker Compose pour configurer le projet avec un GPU.

## Remarques

- **TensorFlow avec GPU** : Si vous utilisez Docker avec un GPU NVIDIA, assurez-vous d'avoir installé le **NVIDIA Docker Toolkit**.
- **Exécution locale** : Si vous ne souhaitez pas utiliser Docker, l'exécution locale avec l'environnement virtuel est aussi possible, bien que moins performante pour l'entraînement de modèles lourds.

## Contributions

N'hésitez pas à soumettre des pull requests ou à ouvrir des issues si vous avez des suggestions ou des problèmes.

## Licence

Ce projet est sous licence MIT.
