def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, n=2)
  return ([string]*n).join ' '
end

def start_of_word(string, n)
  return string[0,n]
end

def first_word(string)
  return string.split.first
end

def titleize(string)
  stop_words = %w{a an and the or for of nor} #there is no such thing as a definite list of stop words, so you may edit it according to your needs.
  string.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end