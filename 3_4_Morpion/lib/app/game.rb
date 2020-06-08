class Game < Human
  attr_accessor :game_array, :game_number

  def initialize
    @game_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @game_number = 1
  end

## TITRE DE LANCEMENT DE PARTIE, CHANGE EN FONCTION DU NOMBRE DE RESTART
  def launch_game
    puts "___________________________________".colorize(:blue).on_black
    puts "      Lancement de la game #{@game_number}#      ".colorize(:blue).on_black.underline
    puts "___________________________________".colorize(:blue).on_black
    @game_number += 1
    game_array = @game_array
  end

## INITIALISATION DU TABLEAU EN REMETTANT A 0 LE GAME_ARRAY
  def make_board_empty
    @game_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    game_array = @game_array
    @number_of_turn = 1
  end

## AFFICHE LE TABLEAU EN FONCTION DU CONTENU DE GAME_ARRAY
  def display_board
    puts " "
    puts "     1     2     3  ".red
    puts "        |     |     "
    print "  A  ".red
    puts "#{game_array[0]}  |  #{game_array[1]}  |  #{game_array[2]}  "
    puts "   _____|_____|_____"
    puts "        |     |     "
    print "  B  ".red
    puts "#{game_array[3]}  |  #{game_array[4]}  |  #{game_array[5]}  "
    puts "   _____|_____|_____"
    puts "        |     |     "
    print "  C  ".red
    puts "#{game_array[6]}  |  #{game_array[7]}  |  #{game_array[8]}  "
    puts "        |     |     "
  end

## DEMANDE AU JOUEUR LA CASE QU'IL SOUHAITE
  def user_input
    puts " "
    print " Quelle case veux-tu ? >> "
    $user_choice = gets.chomp
  end

## REMPLACER un "-" par X ou O en vérifiant le contenu de ce que tape le joueur
  def input_in_case
    computer_array = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']
    computer_array.each do |c|
      if $user_choice == c
        index = computer_array.index(c)
        if game_array[index] == "X" || game_array[index] == "O" 
          puts "     \u{274C} Case déjà sélectionnée !! \u{274C}"
          user_input
        else
          if @number_of_turn.odd? == true 
            game_array[index] = "X"
          elsif @number_of_turn.odd? == false
            game_array[index] = "O"
          end
        end
      elsif $user_choice != "A1" && $user_choice != "A2" && $user_choice != "A3" && $user_choice != "B1" && $user_choice != "B2" && $user_choice != "B3" && $user_choice != "C1" && $user_choice != "C2" && $user_choice != "C3"
        puts "     \u{274C} Il me faut une case !! \u{274C}"
        user_input
      end
    end
  end

## LA BOUCLE QUI VA JUSQU'A 9 TOURS MAXI 
  def game_loop
    @number_of_turn = 1
    while number_of_turn < 10
      turn #Choisi qui doit jouer
      user_input # Le joueur tape sa case
      input_in_case # vérification de la case + X ou O
      display_board # Affichage du board
      is_game_finish? # Vérification gagnant ou égalité
      @number_of_turn += 1
    end
  end

  def is_game_finish?
  #FONCTION BEAUCOUP TROP LONGUE POUR VERIFIER SI LES LIGNES SONT FAITES OU NON
  ## LIGNES / COLONNE ET DIAGONALES DE X
    if (game_array[0] == "X" && game_array[1] == "X" && 
        game_array[2] == "X") || (game_array[3] == "X" && game_array[4] == "X" && game_array[5] == "X") ||(game_array[6] == "X" && game_array[7] == "X" && game_array[8] == "X") || (game_array[0] == "X" && game_array[3] == "X" && game_array[6] == "X") || (game_array[1] == "X" && game_array[4] == "X" && game_array[7] == "X") || (game_array[2] == "X" && game_array[5] == "X" && game_array[8] == "X") || (game_array[0] == "X" && game_array[4] == "X" && game_array[8] == "X") || (game_array[2] == "X" && game_array[4] == "X" && game_array[6] == "X")
      puts " "
      winner_is?
  ## LIGNES / COLONNE ET DIAGONALES DE O
      elsif
       (game_array[0] == "O" && game_array[1] == "O" && game_array[2] == "O") || (game_array[3] == "O" && game_array[4] == "O" && game_array[5] == "O") || (game_array[6] == "O" && game_array[7] == "O" && game_array[8] == "O") || (game_array[0] == "O" &&   game_array[3] == "O" && game_array[6] == "O") || (game_array[1] == "O" && game_array[4] == "O" && game_array[7] == "O") || (game_array[2] == "O" && game_array[5] == "O" && game_array[8] == "O") || (game_array[0] == "O" && game_array[4] == "O" && game_array[8] == "O") || (game_array[2] == "O" && game_array[4] == "O" && game_array[6] == "O")
      puts " "
      winner_is?
      end
  end

## TITLE ASCII ART HONTEUSEMENT COPIEE SUR LE DARKWEB 
  def morpion_title
    puts "                            _             ".red
    puts "                           (_)            ".red
    puts " _ __ ___   ___  _ __ _ __  _  ___  _ __  ".red
    puts "| '_ ` _ \\ / _ \\| '__| '_ \\| |/ _ \\| '_ \\ ".red
    puts "| | | | | | (_) | |  | |_) | | (_) | | | |".red
    puts "|_| |_| |_|\\___/|_|  | .__/|_|\\___/|_| |_|".red
    puts "                     | |                  ".red
    puts "                     |_|                  ".red
    puts "__________________________________________".red
    puts " "
  end
end
