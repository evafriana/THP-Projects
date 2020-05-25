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

const bornIn70s = entrepreneurs.filter(element => element.year > 1969 && element.year < 1980
  );

const theirName = bornIn70s.map( element => `${element.first} ${element.last}`
  );

const ageToday = entrepreneurs.map( element => `${element.first} ${element.last} a ${2020 - element.year} ans en 2020.`
  );

const sortByName = entrepreneurs.sort((a,b) => (a.last > b.last) ? 1 : ((b.last > a.last) ? -1 : 0));

console.log("Quels sont les entrepreneurs nés dans les années 70");
console.log(bornIn70s);

("Nom & prénom entrepreneurs");
console.log(theirName);

("Age aujourd'hui");
console.log(ageToday);

("Trie les entrepreneurs par ordre alphabétique");
console.log(sortByName);
