require 'nokogiri'
require 'open-uri'

def page_listedeputies
  Nokogiri::HTML(open('https://www.nosdeputes.fr/deputes'))
end

def list_deputies
  page_listedeputies.search('span.list_nom').map{ |x| x.content.strip.split(',') }
end

def result_c
  result = []

  list_deputies.each do |x|
    first_name = x.last.strip
    last_name = x.first
    email = "#{first_name.gsub("'", '').downcase}.#{last_name.gsub(' ', '').downcase}@assemblee-nationale.fr"
    result << {
     "first_name" => first_name,
     "last_name" => last_name,
     "email" => email
    }
  end
  result
end

# result.each { |x| p x if x["first_name"] == "M'jid" }
# puts result_c
