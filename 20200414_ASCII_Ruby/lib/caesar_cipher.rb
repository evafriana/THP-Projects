def caesar_cipher(string, integer)
  a = string.split
  a.map { |w| caesar_word(w, integer) }.join(' ')
end

def caesar_word(string, integer)
  string.chars.map { |x| check_special(x) ? caesar_letter(x, integer) : x }.join
end

def caesar_letter(string, integer)
  if check_end(string, integer)
    (string.ord + integer).chr
  else
    (string.ord + integer - 26).chr
  end
end

def check_end(string, integer)
  string.upcase.ord + integer < 90
end

def check_special(string)
  return true if string.match(/[a-zA-Z]/)
end

# A est remplace par D, B devient E, W devient Z, X devient A, Y devient B

# p caesar_cipher('AA bb', 3)
# p caesar_cipher('Bn eva', 3)
# p caesar_cipher('z', 3)

puts caesar_cipher("What a string!", 5)
