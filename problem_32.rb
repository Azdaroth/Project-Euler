def add_local_numbers_sorted(x, y)
  product = x*y
  str = x.to_s + y.to_s + product.to_s
  return nil if str.length != 9
  locals_results = []
  locals_results << x
  locals_results << y
  locals_results << product
  locals_results.join('').split('').map(&:to_i).sort
end

def numbers_valid?(locals_results, numbers)
  locals_results and locals_results[0] == 1 and locals_results == numbers
end

def calculate
  numbers = (1..9).to_a
  results = []
  (1..10000).each do |x|
    (1..1000).each do |y|
      locals_results = add_local_numbers_sorted(x, y)
      if numbers_valid?(locals_results, numbers)
        results << x*y
      end
    end
  end
  results.uniq
end

p calculate.reduce(:+)
