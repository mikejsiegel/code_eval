def f(n)
  return "undefined" if n < 0
  return n if n==0 or n==1
  return f(n-1) + f(n-2)
end

open(ARGV.first).read.split("\n").each do |num|
  puts f(num.to_i)
end

