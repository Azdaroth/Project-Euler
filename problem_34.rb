class Fixnum
  def factorial
    return 1 if self == 0 or self == 1
    (1..self).reduce(:*)
  end
end

def factorable_numbers
  numbers = []
  (3..1000000).each do |x|
    split_num = x.to_s.split('').map(&:to_i)
    numbers << x if split_num.map { |y| y.factorial }.reduce(:+) == x
  end
  numbers
end

p factorable_numbers.reduce(:+)
