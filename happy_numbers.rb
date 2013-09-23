def happy(line,vals)
  total = 0
  line.split("").each do |num|
    #puts "num = #{num}"
    total += num.to_i * num.to_i
  end
  return 1 if total == 1
  return 0 if vals.include?(total)
  return happy(total.to_s,vals << total.to_i)
end

open(ARGV.first).read.split("\n").each do |line|
  puts happy(line,[])
end