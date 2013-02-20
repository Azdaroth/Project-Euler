# The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9
# in some order, but it also has a rather interesting sub-string divisibility property.
# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:
#     d2d3d4=406 is divisible by 2
#     d3d4d5=063 is divisible by 3
#     d4d5d6=635 is divisible by 5
#     d5d6d7=357 is divisible by 7
#     d6d7d8=572 is divisible by 11
#     d7d8d9=728 is divisible by 13
#     d8d9d10=289 is divisible by 17
# Find the sum of all 0 to 9 pandigital numbers with this property.

# real 1m13.274s
# user  1m12.609s
# sys 0m0.612s

def is_devisible_by?(num, div)
  num % div == 0
end

def is_special?(num)
  divs = [2, 3, 5, 7, 11, 13, 17]
  num = num.to_s
  num.slice!(0)
  split_num = num.split('')
  7.times do |x|
    if split_num[x].to_i == 0
      grouped_num = (split_num[x+1] + split_num[x+2]).to_i
    else
      grouped_num = (split_num[x] + split_num[x+1] + split_num[x+2]).to_i
    end
    return false unless is_devisible_by?(grouped_num, divs[x])
  end
  true
end

def pandigitals
  (0..9).to_a.permutation.to_a.map { |x| x.map(&:to_s).reduce(:+) }.map(&:to_i).select { |x| x > 1000000000 }
end

special_pandigitals = []

pandigitals.each do |x|
  special_pandigitals << x if is_special?(x)
end

p special_pandigitals.reduce(:+)
