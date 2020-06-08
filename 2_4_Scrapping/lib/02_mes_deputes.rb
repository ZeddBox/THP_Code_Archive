require 'nokogiri'
require 'open-uri'
require 'pry' #binding.pry 

$annuaire = Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes")) # connexion to the webpage we want to get an info   

# Récupérer le mail d'un député avec son URL
def get_depute_email(depute_url)
  page = Nokogiri::HTML(open(depute_url))
  mail_depute = page.xpath('//*[@id="b1"]/ul[2]/li[1]/ul/li[1]/a').text
  return mail_depute
end
# puts get_depute_email('https://www.nosdeputes.fr/damien-abad') ## Commande test

# Récupérer toutes les URL des mairies dans un ARRAY
def get_deputes_urls
  url_deputes = []
  url_deputes = $annuaire.css('div.list_table a').map { |link| "https://www.nosdeputes.fr"+link["href"] }
  return url_deputes
end
# puts get_deputes_urls ## Commande test

# Récupérer tous les prénoms des députés dans un ARRAY
def get_deputes_firstnames
    firstnames_depute = []
    $annuaire.css('span.list_nom').each do |name|
      firstnames_depute <<  name.text
    end
    i = 0
    while i < firstnames_depute.length
      firstnames_depute[i] = firstnames_depute[i].split(',')[1].strip
      i += 1
    end
  return firstnames_depute
end
# puts get_deputes_firstnames ## Commande test

# Récupérer tous les noms des députés dans un ARRAY
def get_deputes_names
  names_depute = []
  $annuaire.css('span.list_nom').each do |name|
    names_depute <<  name.text
  end
  i = 0
  while i < names_depute.length
    names_depute[i] = names_depute[i].split(',')[0].strip
    i += 1
  end
return names_depute
end
# puts get_deputes_names ## Commande test

# Créer un hash avec {nom mairie => adresse mail}
def putinhash
  puts "Veuillez patienter quelques secondes ;-)"
  firstnames_depute = get_deputes_firstnames 
  names_depute = get_deputes_names
  url_deputes = get_deputes_urls
  i = 0
  mes_deputes = []
  # firstnames_depute.each do |name| ## Pour tous les faire
  10.times do ## Pour ne prendre que les 10 premiers
    mes_deputes << {"First_name" => firstnames_depute[i], "Last_name" => names_depute[i], "Email" => get_depute_email(url_deputes[i])}
    i += 1
  end
  return mes_deputes
end
puts putinhash

