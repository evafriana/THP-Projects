// Un prompt s'affiche avec la question suivante
let a = prompt("De quel nombre veux-tu calculer la factorielle ?");
// L'utilisateur rentre un nombre
let b = a - 1;

if (a == 0) {
  a = 1;
};

while (b > 0) {
  a = a * b;
  b--;
};

// Le résultat est affiché dans la console
console.log(`Le résultat est : ${a}`);

