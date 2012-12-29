class Fixnum
  # very slow comparing to version using built-in method for bin representation
  def binarize(num=self, results = [])
    break_now = false
    bin_arr = results
    break_now = true if num == 1
    bin_arr << num % 2
    current_num = num / 2
    binarize(current_num, bin_arr) unless break_now
    bin_arr.map(&:to_s).reduce(:+)
  end

  def is_palindrome?
    self.binarize == self.binarize.reverse and self.to_s == self.to_s.reverse
  end
end

def palindroms
  (1..1000000).select { |x| x.is_palindrome?  }
end

def palindroms_2
  (1..1000000).select { |x| x.to_s(2) == x.to_s(2).reverse and x.to_s == x.to_s.reverse }
end


p palindroms_2.reduce(:+)

