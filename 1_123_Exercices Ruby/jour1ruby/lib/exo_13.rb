print "Hey coucou ! Dis moi ton année de naissance.. ? > "
user_annee = gets.chomp

n = user_annee.to_i
annee_actuelle = 2020
while n <= annee_actuelle.to_i
  puts n
  n += 1
end