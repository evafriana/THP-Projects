puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
input = gets.chomp


while input.to_i > 25
puts "Voici la pyramide : "
input.to_i.times do
  puts " " * x
  x -= 1
end

i = 1
input.to_i.times do
  puts "#" * i
  i += 1
end
