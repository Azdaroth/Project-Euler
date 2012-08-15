a = 1
b = 2
c = 0
result = 2
while c <= 4000000
	c = a + b
	a = b
	b = c
	result += c if c % 2 == 0
end

puts result