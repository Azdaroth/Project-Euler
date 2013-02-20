# real  0m0.635s
# user  0m0.624s
# sys 0m0.008s

require 'prime'

def generate_primes
  Prime.take_while { |x| x < 10000 }
end

def get_proper_prime
  primes = generate_primes
  res = []
  while primes.count > 1
    local_res = [0]
    i = 0
    while (primes[i] and (local_res[-1] + primes[i]) <= 1000000)
      local_res << local_res[-1] + primes[i]
      i += 1
    end
    res << local_res
    primes.slice!(0)
  end
  # eliminate sums, that are not primes
  # from the end, so that we can keep track of number of terms
  res.each do |arr|
    while !(arr.last.prime?)
      arr.slice!(-1)
    end
  end
  counts = res.map { |x| x.count }
  max_idx = counts.index(counts.max)
  p "#{counts.max} terms"
  res[max_idx].last
end

p get_proper_prime
