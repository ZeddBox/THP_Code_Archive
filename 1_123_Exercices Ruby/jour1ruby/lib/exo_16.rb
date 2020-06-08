print "Salut, j'ai besoin de savoir ton année de naissance ! > "
user_annee = gets.chomp

n = user_annee.to_i
a = 2020

while n <= a
  if (n - user_annee.to_i) <= 1
  puts "Donc.. il y a #{a - n} ans tu avais #{n - user_annee.to_i} an !"
  elsif (a - n) <= 1
  puts "Donc.. il y a #{a - n} an tu avais #{n - user_annee.to_i} ans !"
  else 
  puts "Donc.. il y a #{a - n} ans tu avais #{n - user_annee.to_i} ans !"
  end
  n += 1
end
