def etages

  print "Salut, bienvenue dans ma méga pyramide, tu veux combien d'étages ?? > "
  etages_nb = gets.to_i
  if etages_nb < 1 || etages_nb > 25
    print "Hey, on a dit entre 1 et 25 !! > "
    etages_nb = gets.to_i
  else
    e = etages_nb
    n = 1 
  end
  e = etages_nb
  n = 1
  return e
end 

def half_pyramid
  e = etages
  n = 1
  while n <= e
      puts " "*(e - n)+"#"*n
    n += 1
  end
end

def full_pyramid
  e = etages
  n = 1
  while n <= e
      puts " "*(e - n)+"#"*n+"#"*(n-1)
    n += 1
  end
end

def wtf_pyramid
  e = etages
  n = 1
  while n <= e
    puts " "*(e - n)+"#"*n+"#"*(n-1)
    n += 1
  end
  n = e-1
  until n < 1
    puts " "*(e - n)+"#"*n+"#"*(n-1)
    n -= 1 
   end
end

wtf_pyramid

