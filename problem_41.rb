# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once.
# For example, 2143 is a 4-digit pandigital and is also prime.
# What is the largest n-digit pandigital prime that exists?

#awfully slow

require 'prime'

def is_pandigital?(num)
  split_num = num.to_s.split('').map(&:to_i).sort
  return false unless split_num[0] == 1
  (split_num.count - 1).times do |x|
    return false unless (split_num[x] + 1) == split_num[x+1]
  end
  true
end

# 7-digits max: 1+2+3+4+5+6+7+8+9 = 45  - can be divided by 3, 5, 9 etc.,  1+2+3+4+5+6+7+8 = 36
# can be divided by 2, 3, 9, etc
# 1+2+3+4+5+6+7 = 29 - prime

def max_pandigital
  (10000..10000000).select {|x| is_pandigital?(x) and Prime.prime?(x) }.max
end

p max_pandigital
