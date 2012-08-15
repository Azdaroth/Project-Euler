require 'date'

sundays = 0

(Date.new(1901,1,1)..Date.new(2000,12,31)).select { |x| sundays += 1 if x.sunday? and x.day == 1 } 

puts sundays