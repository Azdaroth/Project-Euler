def has_unique_digits?(num_arr)
  num_arr.count == num_arr.uniq.count
end

def is_pandigital?(num_arr)
  num_arr.sort == (1..9).to_a
end


pandigitals = []

(1..10000).each do |x|
  nums = []
  (1..9).each do |y|
    nums << x * y
    if has_unique_digits?(nums)
      pandigitals << nums.join('').to_i if is_pandigital?(nums.join('').split('').map(&:to_i))
    else
      break
    end
  end
end

p pandigitals.max
