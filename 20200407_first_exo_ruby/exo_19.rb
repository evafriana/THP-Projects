emails = []

i = 1
50.times do
  email = "jean.dupont.0#{i}@email.fr"
  puts email if i.even?
  emails << email
  i += 1
end


