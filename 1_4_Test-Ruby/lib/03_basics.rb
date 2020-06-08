#Dire quel key est le plus gros d'un hash en fonction de son index
#Avec *nil* si ce n'est pas un integer

def who_is_bigger(var1, var2, var3)
  hash = {a:var1,b:var2,c:var3}
    if var1 == nil || var2 == nil || var3 == nil
      return "nil detected"
    else
      return "#{hash.key(hash.values.max)} is bigger"
    end
  end

#Inverser, mettre en majuscule et supprimer les L, T et A d'une phrase.

def reverse_upcase_noLTA(string)
  string = string.reverse
  string = string.upcase
  string = string.delete "LTA"
  return string
end


#Vrai s'il y a 42 dans un array et faux, sinon
def array_42(array)
  return array.include? (42)
end


#Magic Array
def magic_array(array)
  array.flatten(3).sort!.map!{|n| n * 2}.delete_if{|n| n % 3 ==0}.uniq
end
