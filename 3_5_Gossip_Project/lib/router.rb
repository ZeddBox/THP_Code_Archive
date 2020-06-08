require 'controller'
require 'view'
require 'gossip'

class Router
#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new
  end 

#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
def perform 
  puts "\u{1F442} BIENVENUE DANS THE GOSSIP PROJECT \u{1F442}"
  puts "_______________________________________"

  while true

    #on affiche le menu
    system ('clear')
    puts "       Bon, t'es là pour quoi ?!     ".green
    puts " "
    puts "1. \u{1F48C} Je veux créer un gossip ;)"
    puts "2. \u{1F4D3} Je veux voir tous les potins !"
    puts "3. \u{1F9FD}"
    puts "4. \u{1F6AA} Je veux quitter cette appli de fou "
    params = gets.chomp.to_i #on attend le choix de l'utilisateur

    case params #en fonction du choix
    when 1
      @controller.create_gossip
    
    when 2 
      @controller.index_gossips
    
    when 3
      @controller.delete_gossip

    when 4
      system ('clear')
      puts "    .-.  _"
      puts "    | | / )"
      puts "    | |/ /"
      puts "   _|__ /_     A PLUS DANS L'BUS "
      puts "  / __)-' )"
      puts "  \\  `(.-)"
      puts "   > ._>-'"
      puts "  / \\/"
      break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

    else
      puts "\u{26D4} Ce choix n'existe pas, merci de ressayer \u{26D4}" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
      #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

    end
  end
end
end