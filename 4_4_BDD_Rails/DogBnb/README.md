#  🐶 DogSitter 🐕‍

Appli de location de chien pour balade 🦮

## :wrench: Installation 

### Configuration
Entrez les commandes suivantes dans votre terminal préféré :

`bundle install`

### Database creation

<img src="https://app.genmymodel.com/api/projects/_VVzMYIr_Eeq3N_Xh6gsEIQ/diagrams/_VVzMYor_Eeq3N_Xh6gsEIQ/svg">

`rails db:migrate`

### Database initialisation

`rails db:seed`

`rails c`


## 🔥 Démarrage

Une fois dans la console Rails (`rails c`) vous pourrez explorer les tables de données suivantes avec la commande tp de la gem table_print (installée grâce au Gemfile présent lors du `bundle install`) :

`tp Dog.all`

`tp Dogsitter.all` 

`tp City.all` 

`tp Stroll.all`

```diff
+ 1. Possibilité de voir les toutous
+ 2. Possibilité de voir les pet sitters
+ 3. Possibilité de voir les balades (liaisons entre toutou et petsitter)
+ 4. Possibilité de voir les villes
```

## 🍪 Auteur
Julien ANCEAU : https://github.com/ZeddBox/
