require 'nokogiri'
require 'open-uri'
# require 'pry' #binding.pry 

$annuaire = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html")) # connexion to the webpage we want to get an info   

# Récupérer le mail d'une mairie avec son URL
def get_townhall_email(townhall_url)
  page = Nokogiri::HTML(open(townhall_url))
  mail_mairie = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
  return mail_mairie
end
# get_townhall_email("http://annuaire-des-mairies.com/95/ableiges.html")

# Récupérer toutes les URL des mairies dans un ARRAY
def get_townhall_urls
  url_mairies = []
  url_mairies = $annuaire.css('//table.Style20//a').map { |link| link["href"].sub(".", "http://annuaire-des-mairies.com") }
  return url_mairies
end

# Récupérer tous les noms des mairies dans un ARRAY
def get_townhall_name
    name_mairies = []
    $annuaire.css('tr > td > p > a').each do |node|
      name_mairies <<  node.text
    end
  return name_mairies
end
# puts get_townhall_name

# Créer un hash avec {nom mairie => adresse mail}
def putinhash
  puts "Veuillez patienter quelques secondes ;-)"
  name_mairies = get_townhall_name
  url_mairies = get_townhall_urls
  i = 0
  mairie_christmas = []
  name_mairies.each do |name|
    mairie_christmas << {name => get_townhall_email(url_mairies[i])}
    i += 1
  end
  return mairie_christmas
end
puts putinhash

