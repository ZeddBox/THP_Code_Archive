print "Salut, j'ai besoin de savoir ton année de naissance ! > "
user_annee = gets.chomp

n = user_annee.to_i
a = 2020

while n <= a
  puts n
  puts n - user_annee.to_i
  n += 1
end
