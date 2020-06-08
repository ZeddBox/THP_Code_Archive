require 'gossip'

class View
  attr_accessor :content, :author, :gossip_list

  def initialize
    gossip_list = Gossip.new(1,1)
  end

  def create_gossip
    system ('clear')
    puts "          C'est parti ! \u{1F60E}    ".green
    puts " "
    puts "  Quel est ton p'tit nom ?"
    print "  >> " 
    author_new = gets.chomp
    puts "  Alors alors ! C'est quoi le potin? "
    print "  >> " 
    content_new= gets.chomp
    puts " "
    print "."
    sleep(0.3)
    print "." 
    sleep(0.3)
    print "."
    sleep(0.3)
    puts "  C'est dans la boite ! Merci à toi \u{1F479}"
    puts "__________________________________________"
    puts "\u{2705} Appuie sur ENTREE pour revenir au menu \u{2705}"
    gets.chomp
    return params = { content: content_new, author: author_new }
  end

  def index_gossips
    system ('clear')
    puts "         Voici la liste !     ".green
    puts " "
    puts " #ID  | AUTEUR    |  POTIN ".red
    puts " "
    Gossip.new(1,1).index_gossips
    puts "__________________________________________"
    puts "\u{2705} Appuie sur ENTREE pour revenir au menu \{2705}"
    gets.chomp
  end

  def delete_gossip
    system ('clear')
    puts "         Lequel tu veux supprimer ?    ".green
    puts " "
    puts " #ID  | AUTEUR    |  POTIN ".red
    puts " "
    Gossip.new(1,1).index_gossips
    puts " "
    print  " Ecris l'ID ici >> ".green
    Gossip.new(1,1).delete_gossip
    puts "__________________________________________"
    puts "\u{2705} Appuie sur ENTREE pour revenir au menu \u{2705}"
    gets.chomp
  end
end