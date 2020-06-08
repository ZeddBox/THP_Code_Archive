#addition avec 2 variables

def add(a,b)
  return a + b
end

#soustraction avec 2 variables
def subtract(sub1, sub2)
  return sub1 - sub2
end

#somme des nombres dans un array

def sum(array)
  i = 0
  total = 0
  until i == array.length 
    total = total + array[i]
    i += 1
  end
  return total
end

#multiplier 2 variables pour avoir un résultat

def multiply(mul1, mul2)
  return mul1 * mul2
end

#Un chiffre exposant un autre chiffre

def power(pow1, pow2)
  return pow1**pow2
end


#faire factoriel du nombres

def factorial(fac)
  # return (1..fac).inject(:*)
  if fac >= 1
    i = fac-1 
    if i <= 1
      i = 1
    else i = i
    end 

    total = fac * i 
    if i == 1
      i = 1
    else i -= 1
    end

    until i == 0
    total = total * i
    i -= 1
    end
  else
    total = 1
  end

    return total
end
