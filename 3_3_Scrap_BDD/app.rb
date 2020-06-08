require 'bundler'
Bundler.require
#HERE LINKS
$:.unshift File.expand_path('./../lib', __FILE__)
require 'scrap_mairies'
require 'pry' 

puts "Nous allons scrapper les mails des mairies du val d'oise!"
puts "Comment veux-tu les enregistrer ? (json / google / csv)"
print ">> "
what_db = gets.chomp

# binding.pry

my_db = MailMairie.new(what_db)
my_db.create_hash_of_name_and_mail
my_db.choose_what_db

