def palindrome?(number)
	split_number = number.to_s.split('')
	digits = number.to_s.split('').length
	return false if digits % 2 != 0
	part = digits / 2
	first_half = ""
	(0..part-1).each do |x|
		first_half += split_number[x].to_s
	end
	second_half = ""
	(part..digits-1).each do |y|
		second_half += split_number[y].to_s
	end
	first_half == second_half.reverse
end

numbers = []

(100..999).each do |x|
	(100..999).each do |y|
		numbers.push(x*y)
	end
end

max_palindrome = numbers.select { |x| palindrome?(x) }.max
puts max_palindrome
