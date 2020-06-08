print "Salut, bienvenue dans ma méga pyramide, tu veux combien d'étages ?? > "
etages = gets.chomp
e = etages.to_i
n = 1

while n <= e
  puts " "*(e - n)+"#"*n
  n += 1
end