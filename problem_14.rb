
chains_lengths = [0]
numbers = [0]

(2...1000000).each do |x|
	current_number ||= x
	terms = 1
	while true
		if current_number % 2 == 0
			current_number /= 2
		else
			current_number = current_number * 3 + 1
		end
		terms += 1
		break if current_number == 1
	end 
	if terms >= chains_lengths.max
		numbers << x
		chains_lengths << terms
	end
end

puts numbers.last
puts chains_lengths.max