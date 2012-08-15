digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
ten_nineteen = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
decimals = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
hundreds = ["hundred"]
thousands = ["thousand"]
space = ["and"]

amount = 0

q ||= 0
decimal ||= 0
i ||= 1
e ||= 1
hundred ||= 1
r ||= 1
y ||= 1
o ||= 0
u ||= 0

x = 1
while true
	a = x.to_s.split('')
	u = 0 if a.length == 3 and (a[1]+a[2]).to_i == 0
	o = 0 if a.length == 3 and (a[1]+a[2]).to_i == 0
	if a.length == 1
		number = digits[x]
		amount += number.split('').length
		x += 1
		puts number
	elsif a.length == 2 and x < 20
		number = ten_nineteen[x-10]
		puts number
		amount += number.split('').length
		x += 1
	elsif a.length == 2 and a.include? "0"
		number = decimals[q]
		puts number
		amount += number.split('').length
		q += 1
		x += 1
	elsif a.length == 2 and x > 19 and !a.include? "0"	
		digit = 1
	 	while digit < 10
	 		number = decimals[decimal]+digits[digit]
	 		puts number
	 		amount += number.split('').length
	 		digit += 1
	 	end  
	 	decimal += 1
	 	x += 9
	elsif a.length == 3 and (a[1]+a[2]).to_i == 00		
	 	number = digits[e]+hundreds[0]
	 	puts number
	 	amount += number.split('').length
	 	e +=1
	 	x += 1
	elsif a.length == 3 and (a[1]+a[2]).to_i < 10	and !a.include? "00"	
		w = 1
		while w < 10
			number = digits[hundred]+hundreds[0]+space[0]+digits[w]
			puts number
			amount += number.split('').length
			w +=1
		end
		x += 9
	elsif a.length == 3 and (a[1]+a[2]).to_i > 9 and (a[1]+a[2]).to_i < 20	
		t = 0
		while t < 10
			number = digits[r]+hundreds[0]+space[0]+ten_nineteen[t]
			puts number
			amount += number.split('').length
			t+= 1
		end
		x += 10
		r+=1
	elsif a.length == 3 and (a[1]+a[2]).to_i > 19 and !a.include? "00" and a.include? "0"		
		number = digits[y]+hundreds[0]+space[0]+decimals[u]
		puts number
		amount += number.split('').length
		u += 1
		x += 1
	elsif a.length == 3 and (a[1]+a[2]).to_i > 19 and !a.include? "0" 		
		p = 1
		while p < 10
			number = digits[i]+hundreds[0]+space[0]+decimals[o]+digits[p]
			puts number
			amount += number.split('').length
			p += 1 
		end
		x += 9
		o += 1					
	elsif x == 1000
		number = digits[1]+thousands[0]
		puts number
	 	amount += number.split('').length
	 	break
	end
	i += 1 if a.length == 3	and (a[1]+a[2]).to_i == 91
	hundred += 1 if a.length == 3	and (a[1]+a[2]).to_i == 91
	y += 1 if a.length == 3	and (a[1]+a[2]).to_i == 91
	#puts x
	#break if x > 300
end

puts amount

