function script_2() {

  let number = Number(prompt('Hello, tu calculer la factorielle de quel nombre ?'));
  let result = number;
  
  if(number === 0 || number === 1) {
    console.log(1);
  }
  else {
    while (number > 1) {
      number--;
      result = result * number;
    }
    console.log(result);
  }
  
}
  