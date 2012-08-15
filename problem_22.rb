names = File.open('names.txt').read.split(",").map { |x| x.gsub("\"","") }.sort

letters_with_values = []

a = 1
('A'..'Z').each do |x|
	letters_with_values << { x => a }
	a += 1
end

result = 0

position = 1

names.each_with_index do |y|
	local_score = 0
	y.split('').each do |z|
		b = 0
		while true
			if letters_with_values[b].include? z
				local_score += letters_with_values[b][z]
				break
			end
			b += 1
		end
	end
	result += local_score * position 
	position += 1
end

puts result
