require_relative 'lib/user'
require_relative 'lib/event'
require 'time'


julie = User.new("julie@email.com", 32)
jean = User.new("jean@email.com", 35)
romain = User.new("toto@email.com", 31)
eva = User.new("toto@email.com", 30)

# p User.all

# my_event = Event.new("2020-04-20 18:00", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

# p my_event.is_future?

# or !my_event.is_past? --> ! comme "is_past?" en inverse la comparaison entre @start_time et l'heure actuelle, soit tu peux utiliser le fait qu'en Ruby, "!" permet d'obtenir le booléen inverse. Ainsi, le booléen inverse de my_event.is_past? est !my_event.is_past? .

toto = User.find_by_email("toto@email.com")

puts "Voici l'age du User trouvé : #{toto.name}"
