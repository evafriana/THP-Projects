require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts ""
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"
puts ""
puts "Quel est ton prénom?"
print "> "
user_name = gets.chomp.capitalize

my_game = Game.new(user_name)

while my_game.is_still_ongoing?
  input = my_game.menu
  puts `clear`
  my_game.menu_choice(input)
  my_game.enemies_turn
  my_game.new_players_in_sight
end

puts ""
puts "Tu as éliminé #{my_game.my_score} adversaires!"
puts ""
my_game.end
