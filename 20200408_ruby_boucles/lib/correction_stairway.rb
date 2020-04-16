# lancer un dé virtuel
def roll_dice
  return rand(6)+1
end

# Analyser le résultat du lancé pour déterminer si le joueur avance, recule ou ne bouge pas

def analyze_dice(dice)
  if dice >=5
    puts "Vous avancez!"
    return 1
  elsif dice == 1
    puts "Vous reculez!"
    return -1
  else
    puts "rien ne se passe"
    return 0
  end
end

# Afficher un état des lieux au joueur (= lui dire sur quelle case il est)

def show_state(num)
  puts "Vous êtes sur la marche n° #{num}"
end

# Vérifier s'il est à la 10ème case (= s'il a gagné)

def is_over?(num)
  if num == 10
    return true
  else
    return false
  end
end

def play
  puts "Bienvenue dans le jeu!!"
  show_state(1)
end

# Afficher un message de victoire le cas échéant, sinon repartir au lancé de dé (boucle)

def play
  puts "Bienvenue dans le jeu!!"

  step = 1
  show_state(step)

  while(!is_over?(step)) do
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step += analyze_dice(roll_dice)
    show_state(step)
  end

  puts "===Vous avez gagné!==="
end

play

# Résoudre :
# - Bien comprendre la consigne ;
# - Découper le problème global en plein de petits problèmes simples et à ma portée ;
# - Écrire, pour chaque petit problème, une méthode qui le résout (définir ses entrées et sorties puis la coder) ;
# - Tester chaque méthode et confirmer qu'elle marche parfaitement avant de passer à la suivante ;
# - Orchestrer toutes les méthodes pour les exécuter dans le bon ordre!
