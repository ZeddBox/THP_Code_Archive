require 'nokogiri'
require 'open-uri'
#require 'pry' #binding.pry 

$page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) # connexion to the webpage we want to get an info   

all_symbols_treehouse = $page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div')
all_prices_treehouse = $page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a')

def symbol_in_array(all_symbols_treehouse)
  all_symbols_array = []
  all_symbols_treehouse.each do |symbol|
    all_symbols_array += [symbol.text] 
  end
  return all_symbols_array
end

def prices_in_array(all_prices_treehouse)
  all_prices_array = []
  all_prices_treehouse.each do |price|
    all_prices_array += [price.text] 
  end
  return all_prices_array
end

def putinhash(all_symbols_treehouse,all_prices_treehouse)
  all_symbols_array = symbol_in_array(all_symbols_treehouse)
  all_prices_array = prices_in_array(all_prices_treehouse)
  i=0
  darktrader = []
  all_symbols_array.each do |symbols|
      darktrader << {symbols => all_prices_array[i].gsub(/[^\d^.]/, '').to_f} # convert to floats , dollars et enlève les séparateurs de miliers
      i += 1
  end 
  return darktrader
end 

puts "Je teste juste les 10 premiers ! "
puts putinhash(all_symbols_treehouse,all_prices_treehouse)[0..10]
