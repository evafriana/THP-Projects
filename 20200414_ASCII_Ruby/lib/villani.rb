def multiple_of_3_or_5?(current_number)
  return (current_number % 3).zero? || (current_number % 5).zero?
end

def sum_of_3_or_5_multiples(final_number)
  if final_number.class == Integer && final_number >= 0
    (0...final_number).map { |i| multiple_of_3_or_5?(i) ? i : 0 }.sum
  else
    'Yo ! Je ne prends que les entiers naturels. TG'
  end
end

puts sum_of_3_or_5_multiples(10)
puts sum_of_3_or_5_multiples(11)
puts sum_of_3_or_5_multiples(0)
puts sum_of_3_or_5_multiples(3)
puts sum_of_3_or_5_multiples(-1)
puts sum_of_3_or_5_multiples(1.23)
puts sum_of_3_or_5_multiples('chiffre')
