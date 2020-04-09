puts "Bonjour, jusqu'a combien dois-je compter ?"
print "> "
num = gets.chomp

i = 1
num.to_i.times do
  puts i
    i += 1
end
