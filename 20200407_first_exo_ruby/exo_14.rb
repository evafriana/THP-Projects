puts "Bonjour, de combien dois-je décompter ?"
print "> "
num = gets.chomp

i = num.to_i + 1
i.times do
  i = i - 1
  puts i
end
