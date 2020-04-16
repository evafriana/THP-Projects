def welcome
  puts "Binvenue dans notre jeu de l'oie"
  puts "le regle est très simple, tu dois monter 10 marches en fonction d'un jet de dé."
  puts "C'est Parti!"
end

def dice
  result = rand(0..6)
  return result
end

def lets_play
  result = dice
  if result == 5 || result == 6
    return 1
  elsif result == 1
    return -1
  else
    return 0
  end
end

def new_turn(stairs, turns)
  if stairs == 10
    puts "Felicitations! tu as gagné en #{turns} tours."
  else
    turns += 1
    play_result = lets_play
    (stairs = 0) if (stairs += play_result) < 0
    puts "Tu es au #{stairs} étage en #{turns} tours."
    new_turn(stairs, turns)
  end
end

def perform
welcome
new_turn(0, 0)
end

perform


# jeter un de
# verify le resultat de
# le resultat:

# S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent) = marche += 1
# S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent) = marche -= 1 // si 0 reste 0
# S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté) = nouveau tour

# verify la marche si 10 gagne sinon continue

# Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le jeu se termine.

# bravo! tu as gagné en x tours! felicitation!
