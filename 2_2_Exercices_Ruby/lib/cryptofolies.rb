# frozen_string_literal: true

# def caesar_cipher(str, n)
#   str = str.bytes
#   i = 0
#   puts str.class
#   while i < str.length
# ## pour les espaces / ! / ? / '
#     if str[i] == 32 || str[i] == 33 || str[i] == 63 || str[i] == 39
#       return (str[i]).chr
#       i += 1
#     else
# ## Pour les majuscules ##
#       if str[i] >= 65 && str[i] <= 90
# ## Majuscules qui dépassent Z ##
#         if (str[i] + n) >= 90
#           return (str[i] + n - 26).chr
#           i += 1
# ## Majuscules qui dépassent pas Z ##
#         else 
#           return (str[i] + n).chr
#           i += 1
#         end
# ## Minuscules qui dépassent Z
#       elsif (str[i] + n) >= 122
#         return (str[i] + n - 26).chr
#         i += 1
#       else 
# ## Minuscules qui dépassent pas Z
#         return (str[i] + n).chr
#         i += 1
#       end
#     end
#   end
# end

# puts caesar_cipher("C'est un test ? ", 2)
# puts caesar_cipher("abc", 1)

def caesar_cipher(str, n)
  list = str.split(//)
  cipher = []
  list.map! do |l|
    if (l.ord > 96 && l.ord < 123) || (l.ord > 64 && l.ord < 91)
      lett = (l.ord + n)
      if (lett > 96 && lett < 123) || (lett > 64 && lett < 91)
        cipher << lett.chr
      else
        cipher << (lett - 26).chr
      end
    else
      cipher << l
    end
  end
  return cipher.join
end
