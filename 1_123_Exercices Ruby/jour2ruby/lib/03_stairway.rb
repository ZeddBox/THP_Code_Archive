def lancer_des
  nb_des = rand(1..6)
  return nb_des
end

def position_avant
  mm = 0
  puts "Il y a 10 marches"
  puts "Tu es sur la marche n°#{mm}"
  return mm
end 

def jouer
  mm = position_avant.to_i
  while mm < 10
    nb_des = rand(1..6)
    if nb_des == 1 
      if mm == 0
        mm == mm
      else 
        mm -= 1
      end
    elsif nb_des == 2 || nb_des == 3 || nb_des == 4 
      mm == mm
    else 
      mm += 1
    end
    puts "tu as fait #{nb_des} aux dès"
    puts "Tu es maintenant sur la marche #{mm}"
    nb_des = lancer_des.to_i
  end 
  puts mm
end

def position_apres(jouer)
  mm = jouer.to_i
  nb_des = lancer_des.to_i
  puts "Tu as fait #{nb_des} aux dès"
  puts "Tu es maintenant sur la marche N° #{mm}"
end

def perform
  jouer
end

perform