puts "Bonjour, quel âge as-tu ?"
print "> "
input = gets.chomp


age = input.to_i
num = 0
age.times do
  puts "il y a #{age} ans, tu avais #{num} ans"
  age -= 1
  num += 1
end


