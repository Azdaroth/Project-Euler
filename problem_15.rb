class Fixnum

	def factorial
		(1..self).reduce(:*) if self > 0
	end

end

puts (40.factorial) / (20.factorial * 20.factorial)


