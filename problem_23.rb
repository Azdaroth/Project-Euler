#Even though it gives correct answer, it runs for an awfully long time, ~ 30 minutes, need some better algorithm

def get_proper_divisors(number)
	proper_divisors = (1..(number/2.to_i)).select { |x| number % x == 0 }
end

def abundant?(number)
	get_proper_divisors(number).reduce(:+) > number
end

def get_abundants
	abundants = (12..28123-12).select { |x| abundant?(x) }
end

def get_all_sums_of_two_abundants(abundants)
	sums = []
	(0..abundants.length-1).each do |index|
		number = abundants[index]
		if index == abundants.length-1
			sums << number + number
		else
			(index..abundants.length-1).each do |inx|
				sums << number + abundants[inx]
				# this might help, but not checked as it takes more than 2 minute
				# break if number + abundants[inx] > 28123
			end
		end
	end
	sums
end

def sum_non_abundants(sums)
	result = (1..28123).select { |x| !sums.include? x}
	result.reduce(:+)
end

abundants = get_abundants
sums = get_all_sums_of_two_abundants(abundants)

puts sum_non_abundants(sums)

