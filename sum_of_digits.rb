open(ARGV.first).read.split("\n").each do |line|
  total = 0
  line.chars.to_a.each do |num|
    total += num.to_i
  end
  puts total
end