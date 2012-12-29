require 'mathn'

def execute
  i = 0
  final_a = 0
  final_b = 0
  local_counter = 0
  counter = 0
  # b = -999
  b = 2 # for i = 0 b must be prime so it must be positive
  (-999..999).each do |a|
    while b < 1000
      result = i*i + a*i + b
      if result.prime?
        local_counter += 1
        i += 1
      else
        if local_counter > counter
          counter = local_counter
          final_a = a
          final_b = b  
        end
        i = 0
        local_counter = 0
        b += 1
      end
    end
    # b = -999
    b = 2
  end
  puts final_a * final_b
end

execute

