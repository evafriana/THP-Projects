require 'nokogiri'
require 'open-uri'

def page_valdoise
  Nokogiri::HTML(open('https://www.annuaire-des-mairies.com/val-d-oise.html'))
end

def townhall_urls(page)
  page.search('a.lientxt').map(&:content)
end

def page_city(city)
  Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/#{city}.html"))
end

def get_townhall_email(page)
  page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').map(&:content)
end

def cities_array
  townhall_urls(page_valdoise).map { |city| city.downcase.gsub(' ', '-') }
end

def all_emails
  all_emails = cities_array.map do |x|
    get_townhall_email(page_city(x))
  end
  all_emails.flatten
end

def result_b
  result = []
  cities_array.zip(all_emails) { |a, b| result << Hash[a.capitalize, b] }
  result
end

# p result_b
