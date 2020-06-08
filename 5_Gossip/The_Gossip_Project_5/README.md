#  📫 The Gossip Project

Appli pour balancer sur ses potes, ou juste espionner 😉 !

## :wrench: Installation 

### Configuration
Entrez les commandes suivantes dans votre terminal préféré :

`bundle install`

### Database creation

<img src="https://app.genmymodel.com/api/projects/_mZbDcIsVEeq3N_Xh6gsEIQ/diagrams/_mZbDcosVEeq3N_Xh6gsEIQ/svg">

`rails db:migrate`

### Database initialisation

`rails db:seed`

`rails c`


## 🔥 Démarrage

Une fois dans la console Rails (`rails c`) vous pourrez explorer les tables de données suivantes avec la commande tp de la gem table_print (installée grâce au Gemfile présent lors du `bundle install`) :

`tp User.all` `tp City.all` `tp Gossip.all` `tp Tag.all`

Projet sur plusieurs jours : 

# Jour 1
```diff
+ 1. Une navbar pour naviguer dans le site
+ 2. Page regroupant tout les gossips (/welcome/)
+ 3. Page pour voir le contenu d'un potin (/gossip/:id)
+ 4. Formulaire de contact (/contact/)
+ 5. Profil de la team (/team/)
```
# Jour 2
```diff
+ 1. Création de potin possible
+ 2. Gestion des alertes en fonction des critères de la base de données
```
# Jour 3
```diff
+ 1. Amélioration visuelle du site avec Bootstrap et son thème Sketch
+ 2. Edition des gossips
+ 3. Suppression des gossips
+ 4. Possibilité de commenter les gossips, supprimer et editer les commentaires
```
# Jour 4
```diff
+ 1. Création de la gestion des utilisateurs
+ 2. Login / SignUp
+ 3. Blocage des edits / delete selon la connexion de l'utilisateur
- 4. Système de Likes non intégré
```

## 🍪 Auteur
Julien ANCEAU : https://github.com/ZeddBox/
