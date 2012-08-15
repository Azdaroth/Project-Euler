# def get_divisors(number, amount)
# 	divisors = []
# 	stop = (number / 2).to_i
# 	(1..stop).each { |x| divisors << x if number % x == 0  }
# 	if divisors.length == amount - 1
# 		return true
# 	end
# end

#update
def get_divisors(number, amount)
	start = 2
	divided = number
	powers = [0]
	index = 0
	while true		
		current_divided = divided		
		if divided % start == 0
			divided = divided / start
			powers[index] ||= 0
			powers[index] += 1
		else
			start += 1
			index += 1 if divided % start == 0
		end
		break if divided == 1
	end
	powers.map { |x| x+1  }.reduce(:*) 
end

def find_triangle_number

	amount = 500
	current_number = 1
	next_triangle = 2
	triangle = 0

	while true
		if get_divisors(current_number, amount) >= amount
			triangle += current_number
			break
		end
		current_number += next_triangle
		next_triangle += 1
	end
	triangle
end

puts find_triangle_number
