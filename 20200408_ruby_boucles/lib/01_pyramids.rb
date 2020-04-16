def ask_user
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  input = gets.chomp
  return input
end

def half_pyramid
  input = ask_user
  i = 1
  x = input.to_i
  puts "Voici la pyramide : "
  input.to_i.times do
  print " " * x
  puts "#" * i
  i += 1
  x -= 1
  end
end

def full_pyramid
  input = ask_user
  i = 1
  x = input.to_i
  puts "Voici la pyramide : "
  input.to_i.times do
  print " " * x
  puts "#" * i
  i += 2
  x -= 1
  end
end

def ask_user_odd_num
  puts "Salut, bienvenue dans ta pyramide wtf ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  print "> "
  input = gets.chomp
  return input
end


def wtf_pyramid
  input = ask_user_odd_num
  result = input.to_i / 2.0
  i = 1
  x = result.ceil
  j = result.floor
  puts "Voici la pyramide : "
  x.times do
    print " " * x
    puts "#" * i
    i += 2
    x -= 1
  end
  i -=4
  x += 2
  j.times do
    print " " * x
    puts "#" * i
    i -=2
    x += 1
  end
end

wtf_pyramid


