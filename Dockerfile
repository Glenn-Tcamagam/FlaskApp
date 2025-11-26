# Utiliser une image Python officielle
FROM python:3.11-slim

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code dans le conteneur
COPY . .

# Exposer le port utilisé par Flask
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "app.py"]
