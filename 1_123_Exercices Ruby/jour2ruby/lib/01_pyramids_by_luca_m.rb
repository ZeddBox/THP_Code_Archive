puts "\n   #############################################################################################################"                          
puts "   #       ______                          _     _                                 _L/L                        #"
puts "   #       | ___ \\                        (_)   | |                              _LT/l_L_                      #"
puts "   #       | |_/ /   _ _ __ __ _ _ __ ___  _  __| |                            _LLl/L_T_lL_                    #"
puts "   #       |  __/ | | | '__/ _` | '_ ` _ \\| |/ _` |        _T/L              _LT|L/_|__L_|_L_                  #"
puts "   #       | |  | |_| | | | (_| | | | | | | | (_| |      _Ll/l_L_          _TL|_T/_L_|__T__|_l_                #"
puts "   #       \\_|   \\__, |_|  \\__,_|_| |_| |_|_|\\__,_|    _TLl/T_l|_L_      _LL|_Tl/_|__l___L__L_|L_              #"
puts "   #              __/ |   CONSTRUCTOR & CLIMBER      _LT_L/L_|_L_l_L_  _'|_|_|T/_L_l__T _ l__|__|L_            #"
puts "   #             |___/                             _Tl_L|/_|__|_|__T _LlT_|_Ll/_l_ _|__[ ]__|__|_l_L_          #"
puts "   #                                     __ jjs_ _LT_l_l/|__|__l_T _T_L|_|_|l/___|__ | _l__|_ |__|_T_L_  __    #"
puts "   #                                                                                                           #"
puts "   #############################################################################################################"

# FORMES DES PYRAMIDES
def des_half_pyramid(etage)
  i = 1
  while i != (etage+1) 
    puts "#"*i
    i += 1
  end 
end

def asc_half_pyramid(etage)
  i = 1
  while i != (etage+1) 
    puts " "*(etage-i)+"#"*i
    i += 1
  end 
end

def full_pyramid(etage)
  i = 1
    while i/2 != (etage) 
      if i % 2 != 0
      puts " "*(etage-i/2)+"#"*i
      end
    i += 1
    end  
end

def wtf_pyramid(etage)
  i = 1
    while i != etage 
      if i % 2 != 0
      puts " "*(etage/2-i/2)+"#"*i
      end
      i += 1
    end
    j = i
    while j != 0 
      if j % 2 != 0
      puts " "*(etage/2-j/2)+"#"*j
      end
      j = j - 1
    end  
end

# CONSTRUCTEUR EN FONCTION DU CHOIX
def build (etage, type)
  if etage == 0
    puts "\n\n|-----------------------------------------------------------------------|"
    puts "| \"...zZzzz..zZzz...zZz... Hé toi!                                      |"
    puts "|  Qu'est-ce que tu fous dans ma cachette !!!                           |"
    puts "|  Va plutôt faire une pyramide avec au moins 1 étage couillon !\"       |"
    puts "|-----------------------------------------------------------------------|"
    puts "                                                |_______________________________   _/)/)"
    puts "                                                                                  (-.- )"
    puts "                                                                                (\")(\")_o"
    puts "\n\n"
  else
    pyramide = 0
    case type
      when 1
        asc_half_pyramid(etage)
        return pyramide += 1
      when 2
        des_half_pyramid(etage)
        return pyramide += 1
      when 3
        full_pyramid(etage)
        return pyramide += 1
      when 4
        wtf_pyramid(etage)
        return pyramide += 1
      else 
        puts "Mauvaise commande ! On recommence, un peu de concentration stp !\n\n"
    end
  end
end

# MOYENNE
def game (stairs)
  stairs = stairs
  climber = 0
  compt = 0
  while climber != stairs
    launch = (rand(6).succ)
    if launch == 5 || launch == 6
      climber +=1
    elsif launch == 1
      climber = climber - 1
    else
    end
    compt += 1
  end
  return compt
end

def average_finish_times(etage)
  stairs = etage
  results = []
  total = 0
  i = 0
  while i != 100
    jeu = game(stairs)
    results << jeu
    i += 1
  end
  results.each do |result|
    total = total + result
  end
  return total
end

# LANCER DU DE
def roll_dice()
  print "Lancer le dé avec la touche \"Entrer\" :"
  egg = gets.chomp
  if egg != ""
    puts "\n\n|-----------------------------------------------------------------------|"
    puts "| \"...zZzzz..zZzz...zZz... Quoi ?! PAS MOYEN DE PIONCER TRANQUILLE ICI !|"
    puts "|  Bon puisque tu es là je vais te filer une astuce :                   |"
    puts "|  Laisse la touche \"Entrer\" enfoncée pour monter vite, vas-y essaye ! \"|"
    puts "|-----------------------------------------------------------------------|"
    puts "                                                |_______________________________   _/)/)"
    puts "                                                                                  (-.- )"
    puts "                                                                                (\")(\")_o"
    puts "\n\n"
  else
      random = (rand(6).succ)
  case random
  when 1       
    puts "   *********"
    puts "  |         |"
    puts "  |    #    |"
    puts "  |         |"
    puts "   *********"
    print "1 : "
  when 2       
    puts "   *********"
    puts "  | #       |"
    puts "  |         |"
    puts "  |       # |"
    puts "   *********"
    print "2 : "
  when 3       
    puts "   *********"
    puts "  | #       |"
    puts "  |    #    |"
    puts "  |       # |"
    puts "   *********"
    print "3 : "
  when 4       
    puts "   ********* "
    puts "  | #     # |"
    puts "  |         |"
    puts "  | #     # |"
    puts "   *********"
    print "4 : "
  when 5       
    puts "   *********"
    puts "  | #     # |"
    puts "  |    #    |"
    puts "  | #     # |"
    puts "   *********"
    print "5 : "
  when 6       
    puts "   ********* "
    puts "  | #     # |"
    puts "  | #     # |"
    puts "  | #     # |"
    puts "   ********* "
    print "6 : "
  end
  return random
  end
end   

# DEPLACEMENT
def move (roll)
  climb = 0
  if roll == 5 || roll == 6
    puts "Tu montes sur la marche suivante\n\n"
    return climb +=1
  elsif roll == 1 
    puts "Tu descendS sur la marche précèdente\n\n"
    return climb = climb - 1
  else
    puts "Tu restes sur la marche actuelle\n\n"
    return climb = 0
  end
end

# PARI
def bet_select
  bet = gets.chomp.to_i
  if bet == 0
    puts "\n\n|------------------------------------------------------------------------|"
    puts "| \"...zZzzz..zZzz...zZz... Hein ?! La bannière ? Ouais elle est stylée ! |"
    puts "|  C'est grâce à la bonne astuce de DevPomeis.                           |"
    puts "|  Visite son site sur : https://devpomeis.github.io                     |"
    puts "|------------------------------------------------------------------------|"
    puts "                                                |_______________________________   _/)/)"
    puts "                                                                                  (-.- )"
    puts "                                                                                (\")(\")_o"
    puts "\n\n"
    bet = 0
  elsif bet == 1 || 2 || 3
    case bet
    when 1 
      puts "Tu es bien pessimiste, mais ok ton pari est enregistré\n\n"
      return bet
    when 2
      puts "C'est un pari optimiste, j'aime ça ! Je l'enregistre, bonne ascension ;)\n\n"
      return bet
    when 3
      puts "Le plus risqué ! Espérons que ça paye ! Pour voir ça, rdv au sommet ;)"
      return bet
    end
  else
    puts "Mauvaise commande ! On recommence, un peu de concentration stp !\n\n"      
  end
end

# RESULTAT DU PARI
def gamble(bet, try, average)
  bet = bet
  try = try
  average = average/100
  case bet
  when 1
    if try > average
      return true
    end
  when 2
    if try < average
      return true
    end
  when 3
    if try == average
      return true
    end
  end
end

# PROGRAMME
def perform
  puts "\n###################################################################################################################\n\n"
  puts "                       Salut, bienvenue dans \"Pyramid Constructor & Climber\" ! "
  puts "\n###################################################################################################################\n\n"
  pyramide_build = 0
  while pyramide_build != 1
    puts "  Combien d'étage(s) veux-tu pour ta pyramide ?"
    print "> "
    etage = gets.chomp.to_i
    puts "\n\n  Tu préfères une pyramide : \n1. Ascendante \n2. Descedante \n3. Complète \n4. Losange \n(Choisir en tapant le chiffre correspondant)"
    print "> "
    type = gets.chomp.to_i
    puts "  Voici ta Pyramide :\n\n"
    pyramide_build = build(etage, type)
  end
  puts "\n  Whao ! C'est de toute beauté !\n\n"
  puts "\n###################################################################################################################\n\n"
  puts "  Tu veux tenter de grimper dessus ?\n\n"
  puts "  Les règles sont simples : tu vas lancer un dé :\n> Si tu fais 5 ou 6 : tu montes d'une marche\n> Si tu fais 2, 3 ou 4 : tu restes sur place\n> Si tu fais 1 : tu redescends d'une marche"
  average = average_finish_times(etage)
  puts "\n  En moyenne sur 100 parties avec une pyramide de cette taille, tu atteindras le sommet en : #{average/100} étapes\n\n"
  bet = 0
  while bet == 0
    puts "  Tu crois que tu vas faire plus ou moins ? : \n1. Plus \n2. Moins \n3. Pile pareil ! \n(Choisir en tapant le chiffre correspondant)"
    bet = bet_select
  end  
  user = 0
  try = 0
  while user != etage
    roll = roll_dice
    step = move (roll)
    user = user + step
    print ">  Tu es à l'étage n°#{user} sur #{etage}. "
    try += 1
  end
  
  bet_result = gamble(bet, try, average)  
  puts "#{bet_result}"

  puts "\n\n###################################################################################################################\n\n"
  puts "         BRAVO ! Te voilà en tout en haut ! \n"
  if bet_result 
    puts "         Il t'a fallu seulement #{try} étapes pour atteindre le sommet, tu as gagné ton pari. Félicitations !!! \n         Quelle vue magnifique ! Ça vallait le coup ! =)"
  else
    puts "         Il t'a fallu #{try} étapes pour atteindre le sommet, tu n'as gagné ton pari :'( #tristesse\n         Heuresement que la vue est magnifique pour te consoler ! Ça vallait le coup ! =)"
  end
  puts "\n###################################################################################################################\n\n"
end

perform

#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit