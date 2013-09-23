def is_prime?(number)
  count = 2
  while count < number
    return false if number % count == 0
    count +=1
  end
  return true
end

number = 1
for num in 1..1000
  if num.to_s == num.to_s.reverse and is_prime? num
    number = num
  end
end
puts number