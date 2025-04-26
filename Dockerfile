# Utilisation de l'image Python 3.10 officielle comme base
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances
RUN pip install -r requirements.txt

# Copier tout le code dans le répertoire de travail du conteneur
COPY . .

# Exécuter les tests unitaires à l'intérieur du conteneur
CMD ["pytest"]
