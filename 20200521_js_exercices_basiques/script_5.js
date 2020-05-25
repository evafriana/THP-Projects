const books = [
  { title: 'Gatsby le magnifique', id: 133712, rented: 39 },
  { title: 'A la recherche du temps,perdu', id: 237634, rented: 28 },
  { title: 'Orgueil & Préjugés', id: 873495, rented: 67 },
  { title: 'Les frères Karamazov', id: 450911, rented: 55 },
  { title: 'Dans les forêts de Sibérie', id: 8376365, rented: 15 },
  { title: 'Pourquoi j\'ai mangé mon père', id: 450911, rented: 45 },
  { title: 'Et on tuera tous les affreux', id: 67565, rented: 36 },
  { title: 'Le meilleur des mondes', id: 88847, rented: 58 },
  { title: 'La disparition', id: 364445, rented: 33 },
  { title: 'La lune seule le sait', id: 63541, rented: 43 },
  { title: 'Voyage au centre de la Terre', id: 4656388, rented: 38 },
  { title: 'Guerre et Paix', id: 748147, rented: 19 }
];


function allRented(){
  for (book in books) {
    if (books[book]["rented"] > 0) {
        isRented = "Oui";
    } else {
        isRented = "Non";
    }}
     return isRented;
};


function mostRented(){
  let bestBook = books[1]

  books.forEach (book => {
    if (book.rented > bestBook.rented) {
      bestBook = book
    }
  });
  return bestBook
};


function lessRented(){
  let worstBook = books[1]

  books.forEach (book => {
    if (book.rented < worstBook.rented) {
      worstBook = book
    }
  });
  return worstBook
};


function findBook(searchId){
  return books.find(book => book.id === searchId);
};

function deleteBook(searchId){
  const book = findBook(searchId);
  if (book) {
    const index = books.indexOf(book);
    books.splice(index, 1);
  }
};


function sortByName() {
  return books.sort((a,b) => (a.title > b.title) ? 1 : ((b.title > a.title) ? -1 : 0));
};

console.log("Est-ce que tous les livres ont été au moins empruntés une fois ?");
console.log(allRented());

console.log("Quel est livre le plus emprunté ?");
console.log(mostRented());

console.log("Quel est le livre le moins emprunté ?");
console.log(lessRented());

console.log("Trouve le livre avec l'ID: 873495 ;");
console.log(findBook(873495));

console.log("Supprime le livre avec l'ID: 133712 ;");
console.log(deleteBook(133712));
console.log(`Le livre a été supprimé. Voici la nouvelle liste :`);
console.log(books);

console.log("Trie les livres par ordre alphabétique (sans celui avec l'ID 133712 car il est supprimé).");
console.log(sortByName());
