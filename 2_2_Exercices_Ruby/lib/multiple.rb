# frozen_string_literal: true

# Somme des nombres multiples de 3 et 5

def multiple_of_3_or_5?(current_number)
  if (current_number % 3) == 0 || (current_number % 5) == 0
    true
  else
    false
  end
end

def sum_of_3_or_5_number(final_number)
  if final_number.class == Float || final_number.class == String || final_number.negative? == true
    'Hey il faut un entier naturel bitch'
  else
    i = 0
    sum = 0
    while i < final_number
      if multiple_of_3_or_5?(i) == true
        sum += i
        i += 1
      else
        i += 1
      end
    end
    sum
  end
end

sum_of_3_or_5_number(11)
