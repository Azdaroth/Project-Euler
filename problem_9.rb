a = 0
b = 0
c = 0

breaker =""

(1..998).each do |x|
	(1..998).each do |y|
		(1..998).each do |z|
			 if (x**2 + y**2 == z**2 and x + y + z == 1000)
			 	a += x
			 	b += y
			 	c += z
			 	breaker = "yes"
			 	break
			 end
		end
		break if breaker =="yes"
	end 
	break if breaker == "yes"
end


puts "----"

puts a, b, c

puts "----"

puts a * b * c