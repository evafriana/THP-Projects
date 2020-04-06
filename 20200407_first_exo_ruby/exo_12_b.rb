puts "Bonjour, jusqu'a combien dois-je compter ?"
print "> "
num = gets.chomp

(1..num.to_i).each { |i| puts i }
