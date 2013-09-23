def is_prime?(number)
  count = 2
  while count < number
    return false if number % count == 0
    count +=1
  end
  return true
end

total = 0
prime_amount = 0
num = 1
number = 0
while prime_amount < 1000
  num += 1
  if is_prime? num
    number += num
    prime_amount += 1
  end
end
puts number