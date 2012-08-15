start = 2
stop = 10000

def get_proper_divisors(number)
	divisors = (1..number/2).select { |x| number % x == 0 }
end

def sum_proper_divisors(number)
	get_proper_divisors(number).reduce(:+)
end

def has_amicable?(number)
	a = sum_proper_divisors(number)
	b = sum_proper_divisors(a)	
	b == number
end

def get_amicables(start, stop)
	amicables = []
	(start...stop).each { |x| amicables << x if has_amicable?(x) and sum_proper_divisors(x) != x }	
	amicables	
end

puts get_amicables(start, stop).reduce(:+)

