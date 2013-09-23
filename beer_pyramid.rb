total_money = 100
cost = 2

tops = total_money / cost
if tops < 1
  puts 0
  exit
end

levels = 1
cans_used = 0
while cans_used < tops
  cans_for_level = levels*levels
  if cans_for_level < tops-cans_used
    levels +=1
    cans_used += cans_for_level
  else
    cans_used = tops
  end
end

puts levels

