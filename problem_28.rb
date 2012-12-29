
#500 numbers starting from 1 to the end excluding 1 - pattern: (n-1)/2

#f(n) =  f(n-1) + 2 + 8*(n-1)
#f(n) =  f(n-1) + 4 + 8*(n-1)
#f(n) =  f(n-1) + 6 + 8*(n-1)
#f(n) =  f(n-1) + 8 + 8*(n-1)

def diagonal_numbers(key_number)
  i = 0
  numbers = [1]
  500.times do |x|
    numbers << (numbers[-1] + key_number + 8*i)
    i += 1
  end
  numbers.select { |x| x > 1}
end

puts 1 + diagonal_numbers(2).reduce(:+) + diagonal_numbers(4).reduce(:+) + diagonal_numbers(6).reduce(:+) + diagonal_numbers(8).reduce(:+)