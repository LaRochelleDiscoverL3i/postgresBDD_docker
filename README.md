# Docker Postgres pour LaRochelleDiscoverL3i

## Structure du Docker
Un fichier **docker-compose.yml** qui contient l'ensemble du code nécessaire au démarage des images.

Dans le dossier *DockerFile_Postgresql* :
- **Dokerfile** : image postgre
- **tables.sql** : sql d'initialisation

Image :
- Adminer
- Postgres

## Lancement
A la racine du projet :

```batch
docker-compose up
```

## Connection
Sur l'URL : [http://localhost:8080](http://localhost:8080) :
- Adminer :
    - Choisir Postgres
    - Identifiant   : LaRochelleDiscoverL3i
    - Password      : LaRochelleDiscoverL3i
    - Base de données : LaRochelleDiscoverL3i
