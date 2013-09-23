open(ARGV.first).read.split("\n").each do |line|
  x,n = line.split(",").first.to_i, line.split(",").last.to_i
  count = 1
  while x > n*count
    count +=1
  end
  puts n*count
end