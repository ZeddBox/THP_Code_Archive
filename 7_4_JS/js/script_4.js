function script_4() {

  const entrepreneurs = [
    { first: 'Steve', last: 'Jobs', year: 1955 },
    { first: 'Oprah', last: 'Winfrey', year: 1954 },
    { first: 'Bill', last: 'Gates', year: 1955 },
    { first: 'Sheryl', last: 'Sandberg', year: 1969 },
    { first: 'Mark', last: 'Zuckerberg', year: 1984 },
    { first: 'Beyonce', last: 'Knowles', year: 1981 },
    { first: 'Jeff', last: 'Bezos', year: 1964 },
    { first: 'Diane', last: 'Hendricks', year: 1947 },
    { first: 'Elon', last: 'Musk', year: 1971 },
    { first: 'Marissa', last: 'Mayer', year: 1975 },
    { first: 'Walt', last: 'Disney', year: 1901 },
    { first: 'Larry', last: 'Page', year: 1973 },
    { first: 'Jack', last: 'Dorsey', year: 1976 },
    { first: 'Evan', last: 'Spiegel', year: 1990 },
    { first: 'Brian', last: 'Chesky', year: 1981 },
    { first: 'Travis', last: 'Kalanick', year: 1976 },
    { first: 'Marc', last: 'Andreessen', year: 1971 },
    { first: 'Peter', last: 'Thiel', year: 1967 }
  ];
  
  console.log("--------------------------------------------------------------------------");
  console.log('Filtre dans cette liste les entrepreneurs qui sont nés dans les années 70 ');
  for(let index in entrepreneurs) {
    if(entrepreneurs[index].year >= 1970 && entrepreneurs[index].year < 1980) {
      console.log(entrepreneurs[index]);
    }
  }

  console.log("-----------------------------------------------------------------");
  console.log('Sors une array qui contient le prénom et le nom des entrepreneurs');
  let array_of_names = [];
  for(let index in entrepreneurs) {
    array_of_names.push(entrepreneurs[index].first + ' ' + entrepreneurs[index].last)
  }
  console.log(array_of_names)

  console.log("----------------------------------------------");
  console.log("Quel âge aurait chaque inventeur aujourd'hui ?");
  for(let index in entrepreneurs) {
    console.log(`Aujourd'hui, ${entrepreneurs[index].first} ${entrepreneurs[index].last} aurait ${2020 - entrepreneurs[index].year} ans!`)
  }

  console.log("----------------------------------------------------------------");
  console.log("Trie les entrepreneurs par ordre alphabétique du nom de famille.");
  console.log(entrepreneurs.sort(function (a, b) {
    if(a.last < b.last) {return -1; }
    if(a.last > b.last) {return 1; }
    return 0; 
  }))

}