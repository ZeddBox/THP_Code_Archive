# Tu vas maintenant coder un super jeu qui déchire. Mario n'a qu'à bien se tenir avec sa pyramide ! Nous allons imaginer un programme dans lequel une gentille personne va devoir monter 10 marches en fonction d'un jet de dé. Une version informatique du jeu de l'oie en quelque sorte !

# Voici comment cela va se dérouler : à l'exécution, le programme lance une partie. Le joueur est tout en bas d'un escalier à 10 marches, et à chaque tour il va lancer un dé :

#     S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
#     S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
#     S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)

# Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le jeu se termine.

NUMBER_OF_STAIR = 10

$gameVerbose = true

def dice()
    random = Random.rand(1..6)
    puts "Dé: tu viens de faire un #{random}" if $gameVerbose
    return random
end

# Return the number of turn to win
def game()
    puts "Bienvenue sur le jeu Attention à la marche !" if $gameVerbose

    # Start
    stair = 0
    turn = 0

    # Game
    while stair < NUMBER_OF_STAIR do
        # Lancer de dé
        d = dice()

        # Switch case sur le dé
        case d
        when 5, 6
            # Avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
            stair = stair + 1
            print "Tu montes une marche. " if $gameVerbose
        when 1
            # Descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
            # Evite que le joueur puisse aller au sous-sol (stair négatif).
            if stair == 0
                print "Rien ne se passe, sorry bro. " if $gameVerbose
            else
                stair = stair - 1
                print "Tu descends une marche. " if $gameVerbose
            end
        when 2, 3, 4
            # Rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
            print "Rien ne se passe, sorry bro. " if $gameVerbose
        end

        print "Tu es maintenant " + (stair == 0 ? "au RDC" : "à l'étage #{stair}") if $gameVerbose
        puts if $gameVerbose

        turn = turn + 1
    end

    puts "Bravo tu as atteint la 10ème marche en #{turn} coups !"
    return turn
end

def average_finish_time()
    $gameVerbose = false

    allTurns = []
    100.times do
        allTurns << game()
    end
    avgTurn = allTurns.sum() / allTurns.length
    puts "Nombre de coups en moyenne pour gagner : #{avgTurn} coups"
end

game
