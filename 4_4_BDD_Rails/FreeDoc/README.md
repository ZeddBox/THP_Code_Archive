#  ⚕️ FreeDoc 😷

Appli de prise de RDV médicaux en ligne

## :wrench: Installation 

### Configuration
Entrez les commandes suivantes dans votre terminal préféré :

`bundle install`

### Database creation

<img src="https://app.genmymodel.com/api/projects/_vagucIreEeq3N_Xh6gsEIQ/diagrams/_vagucoreEeq3N_Xh6gsEIQ/svg">

`rails db:migrate`

### Database initialisation

`rails db:seed`

`rails c`


## 🔥 Démarrage

Une fois dans la console Rails (`rails c`) vous pourrez explorer les tables de données suivantes avec la commande tp de la gem table_print (installée grâce au Gemfile présent lors du `bundle install`) :

`tp Doctor.all`

`tp Patient.all` 

`tp Appointment.all` 

`tp Place.all`

`tp JoinTableDoctorSpecialty.all` 

`tp Specialty.all` 

```diff
+ 1. Possibilité de voir les docteurs
+ 2. Possibilité de voir les patients
+ 3. Possibilité de voir les RDV
- 4. Impossible de voir les Villes, l'ID ne se créé pas.. 
+ 5. Possibilité de voir les spécialités et les spécialités des docteurs
```

## 🍪 Auteur
Julien ANCEAU : https://github.com/ZeddBox/
