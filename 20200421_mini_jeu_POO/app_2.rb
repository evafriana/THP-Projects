require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# binding.pry

puts ""
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"
puts ""
puts "Quel est ton prénom?"
print "> "
user_name = gets.chomp.capitalize

user = HumanPlayer.new(user_name)
enemies = []
player1 = Player.new("José")
player2 = Player.new("Josiane")
enemies.push(player1, player2)

while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  puts ""
  puts "Voici ton état :"
  puts user.show_state
  puts ""
  puts "Quelle action veux-tu effectuer ?"
  puts ""
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts ""
  puts "Ou attaquer un joueur en vue :"
  puts "1 - #{player1.show_state}"
  puts "2 - #{player2.show_state}"
  puts ""
  print "> "
  input = gets.chomp
  if input == "a"
    user.search_weapon
  elsif input == "s"
    user.search_health_pack
  elsif input ==  "1"
    if player1.life_points > 0
      user.attacks(player1)
    else
      puts "Sadique! Il est déjà mort, putain!"
    end
  elsif input ==  "2"
    if player2.life_points > 0
      user.attacks(player2)
    else
      puts "Sadique! Il est déjà mort, putain!"
    end
  else
    puts "Une action stupide, non identifiée."
  end
  puts ""
  puts "Les autres joueurs t'attaquent !"
  puts ""
  enemies.each do |enemy|
    enemy.attacks(user) if enemy.life_points > 0
  end
end

if user.life_points > 0
  puts "BRAVO ! TU AS GAGNE !"
else
  puts "Loser ! Tu as perdu !"
end
