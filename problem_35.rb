#sieve from problem 10
def sieve(start = 2, stop = 1000000)
  numbers = [0,0,(start..stop).to_a].flatten
  last = Math.sqrt(stop)
  (0..last+2).each do |y|
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

def rotations(split_nums)
  rots = [split_nums.reduce(:+).to_i]
  (split_nums.length - 1).times do
    rots << split_nums.rotate!.reduce(:+).to_i
  end
  rots
end

def circular_primes
  primes = sieve
  circular_primes = []
  primes.each do |x|
    split_nums = x.to_s.split('')
    rotations = rotations(split_nums)
    if rotations.any? { |e| !primes.include? e  }
      next
    else
      circular_primes << x
    end
  end
end

p circular_primes.count
