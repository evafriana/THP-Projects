require 'nokogiri'
require 'open-uri'

def page
  Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
end

def all_symbols
  page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').map(&:content)
end

def all_prices
  page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a').map(&:content)
end

def new_prices
  all_prices.map { |price| price.sub('$', '').sub(',', '').to_f }
end

def result_a
  result = []
  all_symbols.zip(new_prices) { |a, b| result << Hash[a.to_sym, b] }
  result
end

# p result_a
