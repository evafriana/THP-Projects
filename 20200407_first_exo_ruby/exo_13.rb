puts "Bonjour, quelle année es-tu né(e) ?"
print "> "
num = gets.chomp

(num.to_i..2020).each { |i| puts i }
