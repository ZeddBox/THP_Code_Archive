// FONCT 1 
let f = document.querySelector('footer')
let i = 1
function clique() {
  console.log(`Click n° ${i++} !`)
}
  
f.addEventListener('click', clique)

// FONCT 2
let navbar = document.getElementById('navbarHeader')
let nb = document.querySelector('.navbar-toggler')

function collapse() {
  navbar.classList.toggle('collapse')
}

nb.addEventListener('click', collapse)


// FONCT 3
let edit_card_1 = document.querySelectorAll('.btn-outline-secondary')[0]
let p_card_1 = document.querySelectorAll('.card-text')[0]

function red() {
  this.style.color = 'red'
}

edit_card_1.addEventListener('click', function() {
  p_card_1.style.color = 'red' 
  }
)


// FONCT 4
let edit_card_2 = document.querySelectorAll('.btn-outline-secondary')[1]
let p_card_2 = document.querySelectorAll('.card-text')[1]

edit_card_2.addEventListener('click', function() {
    if (p_card_2.style.color === '') {
      p_card_2.style.color = 'green'
    }
    else {
      p_card_2.style.color = ''
    }
  }
)

// FONCT 5
let link_bootstrap = document.createElement("link");
link_bootstrap.rel = "stylesheet";
link_bootstrap.href = "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css";

let h = document.querySelector('header')
let navbar_header = document.querySelector('header')
let my_link = document.querySelector("link")

function toggle_bootstrap() {
  if (my_link.disabled === true) {
    my_link.disabled = false;
  } 
  else {
    my_link.disabled = true;
  }
}
navbar_header.addEventListener('dblclick', toggle_bootstrap)


// FONCT 6
// Je déclare ma NodeList Bouton View
let view_card = document.querySelectorAll('.btn-success')

// Je boucle sur les boutons View (il peut y en avoir plus de 6)
for (let n = 0; n < view_card.length; n++) {

  // Fonction pour réduire taille image et centrer
  let mini_img = function () {
    document.querySelectorAll('.card-img-top')[n].style.width = '20%';
    document.querySelectorAll('.card-img-top')[n].style.margin = 'auto';
  }
  
  // Fonction pour augmenter taille image
  let normal_img = function () {
    document.querySelectorAll('.card-img-top')[n].style.width = '100%';
  }
  
  // Fonction pour hide / show text
  let toggle_text = function () {
    if (document.querySelectorAll('.card-text')[n].style.display === 'none') {
      document.querySelectorAll('.card-text')[n].style.display = 'block';
    } else {
      document.querySelectorAll('.card-text')[n].style.display = 'none';
    }
  }
  
  // Variable définie pour savoir si la card est petite ou grande
  let card_i = 0
  
  function mini_card () {
    if (card_i === 0) {
      mini_img()
      toggle_text()
      card_i = 1
    } else if (card_i === 1) {
      normal_img()
      toggle_text()
      card_i = 0
    }
  }

  // Creation de l'event sur tout les boutons
  view_card.item(n).addEventListener('mouseover', mini_card)
}


// FONCT 7 
let album = document.querySelectorAll('.row')[1]

let button_turn = document.querySelector('.btn-secondary')

function LastInFirstCards() {
  if (true) { // Me demandez pas..............
  album.insertBefore(album.childNodes[10], album.childNodes[0])
  album.insertBefore(album.childNodes[11], album.childNodes[0])
  }
}

button_turn.addEventListener('click', LastInFirstCards)


// FONCT 8 
let button_turn_back = document.querySelector('.btn-primary')

console.log(album.childNodes[1])
console.log(album.childNodes[3])
console.log(album.childNodes[5])
console.log(album.childNodes[7])
console.log(album.childNodes[9])
console.log(album.childNodes[11])
console.log(album.childNodes[12])
console.log(album.childNodes[13])

button_turn_back.addEventListener('click', function(event) {
  event.preventDefault()
  if (true) { // Me demandez pas..............
  album.insertBefore(album.childNodes[1], album.childNodes[11].nextSibling)
  album.insertBefore(album.childNodes[2], album.childNodes[12].nextSibling)
    }
  }, false
)