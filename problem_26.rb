class Fixnum

	def get_recurring_cycle_length
		first_remainder = 1
		remainder = 0
		a = first_remainder
		local_remainders = [0]
		while true
			remainder += 1 if (a.to_s + "0").to_i % self != 0
			previous = a
			local_remainders << a
			a = (a.to_s + "0").to_i % self 
			break if local_remainders.include? a
		end
		return 0 if a == 0
		return 1 if a == previous
		return remainder -= local_remainders.index(a) - 1 if a !=0
		#note that this is - (-1) so 1 is added here
		remainder
	end
	
end

cycles = [0]

(1...1000).each { |x| cycles << x.get_recurring_cycle_length }

puts cycles.index(cycles.max)