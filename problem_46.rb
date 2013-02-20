
# real  0m4.122s
# user  0m4.108s
# sys 0m0.000s

require 'prime'

def goldbachs_true?(num)
  primes = Prime.take_while { |x| x < num }
  primes.each do |prime|
    (1..num).each do |y|
      res = prime + 2*(y**2)
      break if res > num
      return true if res == num
    end
  end
  false
end

num = 0


(35..100000).step(2).each do |x|
  next if Prime.prime?(x)
  unless goldbachs_true?(x)
    num = x
    break
  end
end

p num
