fib_arr = [0, 1]

while true
	fib_arr << fib_arr[-1] + fib_arr[-2]
	break if fib_arr.last.to_s.length == 1000
end

puts fib_arr.length - 1 # because there is 0 i fib_arr

