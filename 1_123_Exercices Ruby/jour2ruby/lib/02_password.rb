require 'io/console'

def signup
  puts "NOUVEAU MOT DE PASSE ?"
  print "> "
  password_signup = gets.chomp

  return password_signup
end

def welcome_screen 
  puts "Bienvenue dans ton espace secret, ça te dirait d'en apprendre un peu plus sur la taille des... nez des autres élèves ?"
end 

def login
  password_signup = signup
  puts "MOT DE PASSE ?"
  print "> "
  password_login = gets.chomp
  password = password_signup
  until password_login == password
    puts "MAUVAIS MOT DE PASSE, ESSAYEZ ENCORE"
    print "> "
    password_login = gets.chomp
  end
  welcome_screen
end

def perform 
  login
end

perform