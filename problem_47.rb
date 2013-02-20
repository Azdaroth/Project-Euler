require 'prime'

# real  0m3.756s
# user  0m3.744s
# sys 0m0.008s


# lucky guess
def generate_primes
  Prime.take_while { |x| x < 1000 }
end

def primes_factorizable?(num, primes)
   divs = 0
   primes = primes.take_while { |x| x < num }
   primes.each do |prime|
    return true if divs == 4
    divs += 1 if num % prime == 0
   end
   false
end




def nums
  nums = []
  primes = generate_primes
  i = 210
  # 2 * 3 * 5 * 7 = 210
  while true
    break if nums.count == 4
    if primes_factorizable?(i, primes)
      nums << i
    else
      nums = []
    end
    i += 1
  end
  nums
end

p nums
