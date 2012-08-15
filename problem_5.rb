
multiplied = (11..20).reduce(:*)


numbers = []
(2520..multiplied).each do |x|
	numbers.push(x) if (11..20).all? { |y| x % y == 0 }
	break if numbers.length == 1
end

puts numbers


