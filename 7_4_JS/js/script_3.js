function script_3() {
  
  
  let number = Number(prompt("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"));
  let pyr = 1
  
  while (number > 0) {
    console.log(" ".repeat(number-1)+"#".repeat(pyr)) 
    number--;
    pyr++
  }

}