require './lib/controller'

class Router
  attr_accessor :controller

  def initialize
    @controller =  Controller.new
  end

  def perform
    system('clear')
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true
      #on affiche le menu
      puts "-" * 50
      puts "Tu veux faire quoi jeune mouss' ?"
      puts ""
      puts "1. \u{1F48C} Je veux créer un gossip"
      puts "2. \u{1F4D3} Afficher tous les potins"
      puts "3. \u{1F9FD} Supprimer un potin"
      puts "4. \u{1F6AA} Je veux quitter l'app"
      puts ""
      print "> "
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      puts ""

      case params #en fonction du choix
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.destroy_gossip
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
        puts "\u{26D4} Ce choix n'existe pas, merci de ressayer \u{26D4}"
      end
    end
  end
end