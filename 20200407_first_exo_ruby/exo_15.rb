puts "Bonjour, quelle année es-tu né(e) ?"
print "> "
num = gets.chomp


age = 0
(num.to_i..2020).each do |year|
  puts "En #{year}, tu as #{age} ans."
  age += 1
end


