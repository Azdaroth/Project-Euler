# The arithmetic sequence, 1487, 4817, 8147,
# in which each of the terms increases by 3330, is unusual in two ways:
# (i) each of the three terms are prime, and, (ii) each of the
# 4-digit numbers are permutations of one another.
# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit
# primes, exhibiting this property, but there is one other 4-digit
# increasing sequence.
# What 12-digit number do you form by concatenating the three terms
# in this sequence?


# real  0m0.303s
# user  0m0.292s
# sys 0m0.008s

require 'prime'

def generate_primes
  primes = Prime.take_while { |x| x < 10000 }.select { |x| x > 1000 and x != 1487 and x != 4817 and x != 8147 }
end

def validate_and_return(num, primes)
  perms = num.to_s.split('').permutation.to_a.map { |x| x.reduce(:+) }.map(&:to_i).reject { |x| !primes.include? x }
  return nil if perms.count < 2
  perms.sort.uniq
end

def match_magic_primes(perms, primes)
  match = ""
  perms.each do |perm|
    num_1 = perm + 3330
    num_2 = perm + 3330*2
    if primes.include? (num_1) and primes.include? (num_2) and perms.include? (num_1) and perms.include? (num_2)
      match += perm.to_s
      match += num_1.to_s
      match += num_2.to_s
      return match
    end
  end
  ""
end

def concat_num
  primes = generate_primes
  primes.each do |x|
    if (perms = validate_and_return(x, primes))
      match = match_magic_primes(perms, primes)
      return match if match != ""
    end
  end
end

p concat_num.to_i
