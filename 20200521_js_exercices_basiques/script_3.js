// Un prompt s'affiche avec la question suivante
const height = prompt("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?")
// L'utilisateur rentre un nombre
let space = height - 1

while (space >= 0) {
  console.log(' '.repeat(space) + '#'.repeat(height - space));
  space--;
};

// Le résultat est affiché dans la console
