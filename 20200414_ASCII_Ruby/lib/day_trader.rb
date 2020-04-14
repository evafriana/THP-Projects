def day_trader(array)
  result = []
  bought = 0
  sold = 0
  best = 0
  current = 0
  array.each_with_index do |x, i|
    y = 0
    while y < i
    current = x - array[y]
    bought = array[y] if best < current
    sold = x if best < current
    best = current if best < current
    y += 1
    end
  end
  result << array.index(bought)
  result << array.index(sold)
  return result
end
