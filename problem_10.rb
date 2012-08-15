start = 2
stop = 2000000

def sieve(start, stop) 
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
  numbers.reduce(:+)
end

puts sieve(start, stop)
