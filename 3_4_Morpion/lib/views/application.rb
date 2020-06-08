class Application

## MISE EN PLACE DES CLASS
  def newGame
    $new_game = Game.new
    $new_game.morpion_title
    $new_human = Human.new
  end

##  MISE EN PLACE DU JEU ET LANCEMENT DU JEU
  def playGame
    # MISE EN PLACE DE LA PARTIE
    $new_game.launch_game
    $new_game.make_board_empty
    $new_human.random_player_begin

    # LANCEMENT DE LA PARTIE
    $new_game.display_board
    $new_game.game_loop
  end

## DEMANDE SI LES JOUEURS VEULENT REJOUER, SI OUI ON RELANCE LA BOUCLE playGame 
  def restart?
    puts " "
    print "Voulez-vous rejouer ? (Y / N) > "
    answer = gets.chomp
    if answer == "Y"
      playGame
    else
      puts "A bientôt !! Prend un cookie pour la route ! \u{1F36A}"
      gets.chomp
    end
  end
  
  def perform 
    newGame
    playGame
    restart?
  end
end