require 'bundler'
Bundler.require
require 'pry'

require_relative 'lib/game'
require_relative 'lib/player'

puts " -------------------------------------------------"
puts "|    Bienvenue sur 'ILS VEULENT TOUS MA POO' !    |"
puts "| Le but du jeu est d'être le dernier survivant ! |"
puts " -------------------------------------------------"

print "Création du personnage ! Quel est ton nom ? > "
name = gets.chomp 
user = HumanPlayer.new(name)

enemies = []
enemies << Player.new("José")
enemies << Player.new("Josiane")

# binding.pry
while user.life_points >0 && (enemies[0].life_points > 0 || enemies[1].life_points >0)
puts "Voici ton état !"
puts user.show_state
puts " "
puts "   Quelle action veux-tu effectuer ? "
puts " "
puts "a - chercher une meilleure arme"
puts "s - chercher un kit de soin"
puts " "
puts "Attaquer un joueur en vue : "
enemies.length.times do |i|
  if enemies[i].life_points > 0
    puts "#{i} - #{enemies[i].show_state}"
  end
end
print "> "

choice = gets.chomp
  if choice == "a"
    user.search_weapon
    gets.chomp
  elsif choice == "s"
    user.search_health_pack
    gets.chomp
  else user.attacks(enemies[choice.to_i])
    gets.chomp
  end
puts " "
puts "OK ! Les autres joueurs t'attaquent maintenant !"
puts " "
enemies.each do |enemy|
  if enemy.life_points > 0 
    enemy.attacks(user)
  end
end
gets.chomp

end

if user.life_points > 0
  puts "La partie est finie !"
  puts "BRAVO ! TU AS GAGNE AVEC #{user.life_points} PV!"
elsif user.life_points <= 0 
  puts "Loser ! Tu as perdu !" 
end

