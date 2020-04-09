puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
input = gets.chomp

while input.to_i > 25
  puts "Choisis un nombre inferieur à 25"
  print "> "
  input = gets.chomp
end

i = 1
puts "Voici la pyramide : "
input.to_i.times do
  puts "#" * i
  i += 1
end
