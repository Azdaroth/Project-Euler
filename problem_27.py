import math

def create_primes(stop=20000):
  numbers = [0,0]
  for x in range(2,stop+1):
    numbers.append(x)
  last = int(math.sqrt(stop)) 
  for y in range(0,last+3):
    if numbers[y] != 0:
      a = numbers[y]
      x = 2 * a
      while x <= stop:
        numbers[x] = 0
        x += a
  return filter(lambda x: x != 0, numbers)

def execute():
  primes = create_primes()
  i = 0
  final_a = 0
  final_b = 0
  local_counter = 0
  counter = 0
  b = 2
  for a in range(-999,1000):
    while b < 1000:
      result = i*i + a*i + b
      if result in primes:
        local_counter += 1
        i += 1
      else:
        if local_counter > counter:
          counter = local_counter
          final_a = a
          final_b = b
        i = 0
        local_counter = 0
        b += 1
      b = 2
  print final_a * final_b  

execute()

