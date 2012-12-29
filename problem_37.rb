#sieve from problem 10
def sieve(start = 2, stop = 1000000)
  numbers = [0,0,(start..stop).to_a].flatten
  last = Math.sqrt(stop)
  (0..last + 2).each do |y|
    if numbers[y] != 0
      a = numbers[y]
      x = 2 * a
      while x <= stop
        numbers[x] = 0
        x += a
      end
    end
  end
  numbers.select { |x| x != 0 }
end

def truncatable_primes
  primes = sieve
  primes.select { |x| x > 10 }.select { |y| is_truncatable?(y, primes) }
end

def is_truncatable?(num, primes)
  cycles = num.to_s.length
  rev_num = num.to_s
  num = num.to_s
  cycles.times do
    return false unless (primes.include? num.to_i and primes.include? rev_num.to_i)
    num.slice!(0)
    rev_num.slice!(-1)
  end
  true
end

p truncatable_primes.reduce(:+)
