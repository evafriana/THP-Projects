puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
input = gets.chomp

i = 1
puts "Voici la pyramide : "
input.to_i.times do
  puts "#" * i
  i += 1
end



