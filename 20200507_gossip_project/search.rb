require 'launchy'

input = ARGV.join('+')

Launchy.open("https://www.google.com/search?q=#{input}")
