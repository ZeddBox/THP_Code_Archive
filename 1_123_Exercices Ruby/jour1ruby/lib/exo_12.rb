print "Hey coucou ! Dis moi un nombre !! > "
user_number = gets.chomp

n = 0
while n <= user_number.to_i 
  puts n
  n += 1
end