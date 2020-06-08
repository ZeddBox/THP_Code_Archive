print "Bonjour, c'est quoi ton prénom ? > "
user_firstname = gets.chomp
print "et ton nom ? > "
user_name = gets.chomp
puts "Bonjour, #{user_firstname + " " + user_name} !!"