print "Bonjour, c'est quoi ton nom ? > "
user_name = gets.chomp
puts "Bonjour, #{user_name} !!"
print "ça va ?? "
ca_va = gets.chomp
if ca_va = ("Oui" || "oui" || "OUI" || "Yes" || "YES")
  puts "OK COOL !"
else 
  puts "Oh crotte!"
end