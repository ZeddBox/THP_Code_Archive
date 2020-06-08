function script_7() {

  // Si on lui pose une question (= la phrase finie par "?"), le bot répond "Ouais Ouais..." ;
  // Si on lui hurle trop dessus (= la phrase est 100% en majuscules), le bot répond "Pwa, calme-toi..." ;
  // Si la phrase que tu prononces contient le mot "Fortnite", le bot répond "on s' fait une partie soum-soum ?" ;
  // Si on lui envoie un message vide, le bot répond "t'es en PLS ?" ;
  // Pour tout autre phrase que tu lui envoies, le bot répond "balek." ;

  function isUpperCase(str) {
    return str === str.toUpperCase();
  }

  let asking = prompt('Wesh, tu veux quoi ? (Q pour Quitter)');
    
  if (asking.substring(asking.length - 1) === "?") {
    console.log("Ouais Ouais..");
  }
  else if (asking.length === 0) {
    console.log("T'es en PLS ou quoi ?");
  }
  else if(asking === "Q") {
    console.log("Ouais c'est ça, j'préfère !");
  }
  else if (isUpperCase(asking) === true) {
    console.log("Pwa, calme toi..");
  }
  else if (asking.indexOf("Fortnite") !== -1) {
    console.log("Cool.. On s' fait une partie soum-soum ?");
  }
  else {
    console.log("Balek.");
  }




}