money = [1, 2, 5, 10, 20, 50 ,100, 200]

a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0

#200 = 200*a + 100*b + c*50 + d*20 + e*10 + f*5 + g*2 + h*1

ways = 0 

#brute force motherfucker, but fast enough;]
while (result = a * 200) <= 200
  b = 0
  while (result = a * 200 + b * 100) <= 200
    c = 0
    while (result = a * 200 + b * 100 + c * 50) <= 200 
      d = 0
      while (result = a * 200 + b * 100 + c * 50 + d * 20) <= 200
        e = 0
        while (result = a * 200 + b * 100 + c * 50 + d * 20 + e * 10) <= 200
          f = 0
          while (result = a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5) <= 200
            g = 0
            while (result = a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5 + g * 2) <= 200
              # while (result = a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5 + g * 2 + h) <= 200
                ways += 1 
                # h += 1
              # end
              g += 1
            end
            f += 1
          end
          e += 1
        end
        d += 1
      end
      c += 1
    end
    b += 1
  end
  a += 1
end


puts ways