puts "Bonjour, quel âge as-tu ?"
print "> "
input = gets.chomp


age = input.to_i
num = 0
age.times do
  if age == num
    puts "Il y a #{num} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
    age -= 1
    num += 1
  else
    puts "il y a #{age} ans, tu avais #{num} ans"
    age -= 1
    num += 1
  end
end



