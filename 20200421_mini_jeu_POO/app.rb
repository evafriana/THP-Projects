require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# binding.pry

player1 = Player.new("José")
player2 = Player.new("Josiane")
puts ""
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"
puts ""

while player1.life_points >= 0 && player2.life_points >= 0
  puts "Voici l'état de chaque joueur :"
  puts player1.show_state
  puts player2.show_state
  puts ""
  puts "Passons à la phase d'attaque :"
  player1.attacks(player2) if player1.life_points >= 0
  player2.attacks(player1) if player2.life_points >= 0
  puts ""
end
puts "#{player2.life_points >= 0 ? player2.name : player1.name} a gagné!"
