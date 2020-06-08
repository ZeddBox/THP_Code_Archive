function changeTitles(str, str2) {
  let title = document.querySelector('h1')
  title.innerHTML = str
  let content = document.querySelector('section p')
  content.innerHTML = str2
}

changeTitles("Ce que j'ai appris à THP", "THP est une formation qui, en 3 mois, à plein temps, vous apportera des connaissances actionnables pour vous permettre de voir plus loin. Chez nous, pas de professeurs, pas de locaux, mais un groupe de travail en présentiel. Après 11 semaines, les principaux langages et outils du web n'auront plus de secret pour vous !")

function changeCallToActions() {
  let button1 = document.querySelector('section a')
  button1.innerHTML = "Ok je veux tester!"
  button1.href = "http://www.thehackingproject.org"
  let button2 = document.querySelectorAll('section a')[1]
  button2.innerHTML = "Non merci !"
  button2.href = "https://www.pole-emploi.fr/accueil/"
}

changeCallToActions()

function changeLogoName() {
  let logoName = document.querySelectorAll('header div div a')[3];
  logoName.innerHTML = "The THP Experience";
  logoName.style.fontSize = "2em";

}

changeLogoName()

function populateImages() {
  let imagesArray = ["https://img.icons8.com/color/480/000000/html-5.png", "https://img.icons8.com/color/480/000000/css3.png", "https://img.icons8.com/color/480/000000/javascript.png", "https://img.icons8.com/color/480/000000/ruby-programming-language.png", "https://img.icons8.com/color/480/000000/bootstrap.png", "https://img.icons8.com/color/480/000000/github.png", "http://jeudisdulibre.be/wp-content/uploads/2014/02/Ruby_on_Rails-logo.png", "https://avatars2.githubusercontent.com/u/25484553?s=200&v=4", "https://img.icons8.com/color/480/000000/heroku.png"];

  let imageCards = document.querySelectorAll(".album img") 
  for (let i = 0; i < imageCards.length ; i++) {
    imageCards[i].src = imagesArray[Math.floor(Math.random() * imagesArray.length)]
    imageCards[i].style.width = "120px"
    imageCards[i].style.margin = "auto"
  }
}

populateImages()

function deleteLastCards() {
  let cards = document.getElementsByClassName("card");
  let i = cards.length - 3
  for (let step = 0; step < 3; step++) {
    cards[i].outerHTML = ""
  }

}

deleteLastCards()

function changeCardsText() {
  let cards = document.getElementsByClassName("card-text");
  for (let step = 0; step < 3; step++) {
    cards[step].innerHTML = "L’HyperText Markup Language, généralement abrégé HTML, est le langage de balisage conçu pour représenter les pages web"
    if (step === 1) {
      cards[step].innerHTML = "Les feuilles de style en cascade, généralement appelées CSS de l'anglais Cascading Style Sheets, forment un langage informatique qui décrit la présentation des documents HTML et XML"
    }
    else if (step === 2) {
      cards[step].innerHTML = "JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs. C'est un langage orienté objet à prototype."
    }
  }
}

changeCardsText()

function changeViewButtons() {
  let viewButton = document.querySelectorAll(".card .btn");
  for (let i = 0; i < viewButton.length; i++) {
    if (viewButton[i].innerHTML === "View") {
      viewButton[i].classList.remove("btn-outline-secondary")
      viewButton[i].classList.add("btn-success")
    }
  }
    
}

changeViewButtons()

function addRow() {
  let parent = document.querySelectorAll('.container')[3]
  let newRow = document.createElement('div')
  newRow.classList.add('row')
  parent.appendChild(newRow)

  let card3 = document.querySelectorAll('.col-md-4')
[2]
  newRow.appendChild(card3)

}

addRow()