class Human
  attr_accessor :name1, :name2, :player1, :player2, :number_of_turn, :player1_score, :player2_score

  def initialize
    puts "Quel est le nom du premier joueur ? > "
    @name1 = gets.chomp
    puts "Quel est le nom du deuxième joueur ? > "
    @name2 = gets.chomp
    puts "Bienvenue #{name1} et #{name2}! \u{1f60e}"
    puts " "
    @player1_score = 0
    @player2_score = 0
  end

## CHOISI ALEATOIREMENT QUEL JOUEUR VA JOUER EN PREMIER AVEC LES "X"
  def random_player_begin
    puts "On tire au sort le joueur qui débute !"
    print "." 
    sleep (0.3)
    print "."
    sleep(0.3)
    print "."
    sleep(0.3)
    random = rand(0..1)
    if random == 0
      $player1 = @name1
      $player2 = @name2
      print "Ok, c'est "
      print "#{$player1}".green
      puts " qui commence avec les X"
      gets.chomp
    else 
      $player1 = @name2
      $player2 = @name1
      print "Ok, c'est "
      print "#{$player1}".green
      puts " qui commence avec les X"
      gets.chomp
    end
  end

## LE JOUEUR TIRE AU SORT COMMENCE, ET ENSUITE ON ALTERNE
  def turn
    if @number_of_turn.odd? == true
    print "#{$player1}".green
    puts ", à toi de choisir !"
    $winner = $player1
    elsif @number_of_turn.odd? == false
    print "#{$player2}".green
    puts ", à toi de choisir !"
    $winner = $player2
    end
  end

## DECOUVRE LE VAINQUEUR OU L'EGALITE
  def winner_is?
    if 
      if @number_of_turn.odd? == true
        puts "   \u{1F389} #{$winner} GAGNE CETTE PARTIE !! \u{1F389}   ".colorize(:green).on_black.underline
        @number_of_turn += 10
      elsif @number_of_turn.odd? == false
        puts "     \u{1F389} #{$winner} GAGNE CETTE PARTIE !! \u{1F389}   ".colorize(:green).on_black.underline
        @number_of_turn += 10
      end
    else
      @number_of_turn == 10
      puts "     EGALITÉ !!      ".colorize(:green).on_black.underline
    end
  end

end
