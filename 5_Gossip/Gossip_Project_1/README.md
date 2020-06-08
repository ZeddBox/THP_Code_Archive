#  📫 The Gossip Project

Appli pour balancer sur ses potes, ou pas !

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

Le projet est fini pour ce premier jour.

```diff
+ 1. Une navbar pour naviguer dans le site
+ 2. Page regroupant tout les gossips (/welcome/)
+ 3. Page pour voir le contenu d'un potin (/gossip/:id)
+ 4. Page de profil d'un utilisateur (/user/:id)
+ 5. Formulaire de contact (/contact/)
+ 6. Profil de la team (/team/)
```

## 🍪 Auteur
Julien ANCEAU : https://github.com/ZeddBox/
