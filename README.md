# Projet n°7 - Parcours Développeur Web - OpenClassrooms
## Créez un réseau social interne d’entreprise pour le groupe Groupomania

Ce projet est réalisé dans le cadre du parcours **Développeur Web** du site [OpenClassrooms](https://openclassrooms.com/ "OpenClassrooms")

![Logo Groupomania](Front/groupomania-front/src/assets/Groupomania_Logos/small-logo.png)

### Documentations
* [Note de cadrage](z-docs/Groupomania_Specs_FR_DWJ_VF.pdf)

### Technologies utilisées
* Back
    * NodeJS
    * Express
    * mySql
* Front
    * Vue.js 
    * Sass

### Objectifs de la mission
Le projet consiste à construire un réseau social interne pour les employés de Groupomania. Le but de cet outil est de faciliter les interactions entre collègues. Le département RH de Groupomania a laissé libre cours à son imagination pour les fonctionnalités du réseau et a imaginé plusieurs briques pour favoriser les échanges entre collègues.

### Compétences évaluées
* Gérer un stockage de données à l'aide de SQL
* Personnaliser le contenu envoyé à un client web
* Implémenter un stockage de données sécurisé en utilisant SQL
* Authentifier un utilisateur et maintenir sa session

### Serveur de développement local
Pour lancer le serveur de développement

* Back:

Nécessite de créer un fichier "jwt.secret.js" dans Api/config/ et d'y saisir une clé
    
    module.exports = {
      secret: "(votre clé)"
    }
    
Puis lancer la commande suivante :
     
    cd Api
    npm install
    nodemon server

* Front:

Nécessite de créer un fichier .env dans "Front/groupomania-front/" :

    API_ENV=localhost
    API_PORT=3000


Puis lancer la commande suivante :
    
    cd Front/groupomania-front
    npm install
    npm run serve

Par défaut le serveur client est accessible en local via le port 8080: http://localhost:8080/

### Base de données  

Les instructions pour importer la structure de la base de données sont accessible via :
    
    cd MySql/groupomania_db_structure.sql

Nécessite de créer un fichier .env dans "Api/" :

    DB_HOST=localhost
    DB_USER="username du serveur SQL"
    DB_PASS="password du serveur SQL"
    DB_DATABASE=groupomania

