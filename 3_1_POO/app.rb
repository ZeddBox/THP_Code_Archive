require "pry"

require_relative "lib/user"
require_relative "lib/event"

#On crée 3 User
julie = User.new("julie@email.com", 35)
jean = User.new("jean@maimail.com", 22)

my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])

my_event.age_analysis #j'exécute la nouvelle méthode que j'ai écrite

binding.pry 
# puts "Souhaites-tu faire créé un nouvel évenement ? (y/n) >"
# reply = gets.chomp

# def new_event_chomp
#   puts "Commençons. Quel est le nom de l'événement ? "
#   print "> "
#   temp_title = gets.chomp
#   puts "Super. Quand aura-t-il lieu ? (Formation AAAA-MM-JJ HH:MM)"
#   print "> "
#   temp_date_hour = gets.chomp
#   puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
#   print "> "
#   temp_duration = gets.chomp
#   puts "Génial. Qui va participer ? Balance leurs e-mails (séparé par des ',' sans espaces) !"
#   print "> "
#   temp_invit = gets.chomp
#   puts "Super, c'est noté, ton évènement a été créé !"
#   print " "
#   temp_mails_invit = temp_invit.split(',').map{|s| s}

#   # Event.new(temp_date_hour, temp_duration, temp_title, temp_invit)

#   #### PAS FINI ---- PROBLEME POUR AFFICHER L'EVENT FINAL AVEC .TO_S
# end

# while  reply !='y' && reply != 'n'
#   puts "Je n'ai pas compris ! (y/n)"
#   reply = gets.chomp
# end
# if reply == 'y'
#     puts 'Cool !'
#     new_event_chomp
#     # puts Event.all[0].to_s
#   else
# end