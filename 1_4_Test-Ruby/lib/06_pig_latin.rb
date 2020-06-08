# Commençant par une voyelle
# Rajouter "ay" à la fin

# Commençant par une consonne
# Enlever première lettre et ajouter à la fin "consome + ay"

# Commençant par deux consonnes
# Enlever 2 lettres et ajouter "2 lettres + ay" à la fin

# Commençant par trois consonnes
# Enlever 3 lettres et ajouter "3 lettres + ay" à la fin

# Exception pour "qu" qui est donc 2 ou 3 consonnes (squ are)

###  => COde de Hatem Zehani

def reg(str)
  return /^([^aeuio]+u|[^aeuio]+)?(.+)/.match(str)
end 

def translate(str)
  return str.split(' ').map { |x| "#{reg(x)[2]}#{reg(x)[1]}ay" }.join(' ')
end