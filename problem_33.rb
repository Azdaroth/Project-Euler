def slice_common_number_and_give_float(xs, ys)
  if xs[0] == ys[0]
    xs.slice!(0)
    ys.slice!(0)
  elsif xs[0] == ys[1]
    xs.slice!(0)
    ys.slice!(1)
  elsif xs[1] == ys[0]
    xs.slice!(1)
    ys.slice!(0)
  elsif xs[1] == ys[1]
    xs.slice!(1)
    ys.slice!(1)
  end
  return xs[0].to_f, ys[0].to_f
end

def has_common_number?(xs, ys)
  xs[0] == ys[0] or xs[0] == ys[1] or xs[1] == ys[0] or xs[1] == ys[1]
end

def last_zeros(xs, ys)
  xs[1].to_f == 0.0 and ys[1].to_f == 0.0
end


def calculate_numerators_denominators
  numerators = []
  denominators = []
  (10..99).each do |x|
    (10..99).each do |y|
      xs = x.to_s.split('')
      ys = y.to_s.split('')
      if has_common_number?(xs, ys) and x != y and !last_zeros(xs, ys)
        x_new, y_new = slice_common_number_and_give_float(xs, ys)
        if (x_new / y_new) == (x.to_f / y.to_f) and x_new < y_new
          numerators << x
          denominators << y
        end
      end
    end
  end
  return numerators, denominators
end


def calculate
  numerators, denominators = calculate_numerators_denominators
  denominators.reduce(:*) / numerators.reduce(:*)
end

p calculate
