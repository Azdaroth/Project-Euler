nums = [] 
(2..100).each { |x| (2..100).each { |y| nums << x**y } }
puts nums.uniq.size

#alternatively:
# (2..100).map { |x| (2..100).map { |y|  x**y } }.flatten.uniq.size