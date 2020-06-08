#  📫 Gossip Project

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

`tp User.all`

`tp City.all`

`tp Gossip.all`

`tp Tag.all`

`tp JoinTableGossipTag.all`

`tp PrivateMessage.all`

```diff
+ 1. Possibilité de voir tout les utilisateurs
+ 2. Possibilité de voir les villes
+ 3. Possibilité de voir les potins
+ 4. Possibilité de voir les tags disponibles et la table de corrélation avec les potins
+ 5. Possibilité de voir les private messages envoyés, à qui et par qui ! 
- 6. Partie BONUS non faite !
```

## 🍪 Auteur
Julien ANCEAU : https://github.com/ZeddBox/
