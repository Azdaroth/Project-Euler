# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# By converting each letter in a word to a number corresponding to its alphabetical position and adding these values
# we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10.
# If the word value is a triangle number then we shall call the word a triangle word.
# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common
# English words, how many are triangle words?


def words
  file = File.open("words.txt")
  words = file.read.split(",").map { |x| x.gsub("\"", "") }
  file.close
  words
end

def triangle_numbers
  (1..100).map { |x|  x * (x + 1) / 2 }
end

def alphabet
  alphabet = {}
  i = 1
  ('A'..'Z').each { |letter| alphabet[letter] = i ; i += 1 }
  alphabet
end

def is_triangle_word?(word)
  alpha_hash = alphabet
  word_arr = word.split('')
  res = 0
  word_arr.each { |c| res += alpha_hash[c] }
  triangle_numbers.include? res
end

def triangle_words
  words.select { |word| is_triangle_word?(word)  }
end

p triangle_words.count
