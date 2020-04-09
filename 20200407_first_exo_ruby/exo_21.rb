puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
input = gets.chomp

i = 1
x = input.to_i
puts "Voici la pyramide : "
input.to_i.times do
  print " " * x
  puts "#" * i
  i += 1
  x -= 1
end
