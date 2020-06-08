print "Viens on joue à un jeu.. Dit moi un nombre ! > "
user_number = gets.chomp

n = 0
a = user_number.to_i
while a >= n
  puts a
  a -= 1
end