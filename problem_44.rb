# Pentagonal numbers are generated by the formula, Pn=n(3n−1)/2. The first ten pentagonal numbers are:
# 1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...
# It can be seen that P4 + P7 = 22 + 70 = 92 = P8. However, their difference, 70 − 22 = 48, is not pentagonal.
# Find the pair of pentagonal numbers, Pj and Pk, for which their sum and difference is
# pentagonal and D = |Pk − Pj| is minimised; what is the value of D?

# It took more than 10 hours...


def pentagonals
  (1..10000).map { |x| x*(3*x-1)/2 }
end

def get_pairs
  nums = pentagonals
  pairs = []
  nums.each do |x|
    nums.each do |y|
      pairs << [x, y] if (nums.include? (x+y) and nums.include? (x-y))
    end
  end
  pairs
end

def find_minimised
  diffs = []
  get_pairs.each do |arr|
    diffs << (arr[0] - arr[1]).abs
  end
  diffs.min
end

p find_minimised


