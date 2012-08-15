def prime?(number)
	result = 0
	(2...number).each do |x|
		result += x if number % x == 0
	end

	return true if result == 0
end

primes = []

a = 2
while primes.length != 10001
	primes.push(a) if prime?(a)
	a += 1
end

puts primes.last