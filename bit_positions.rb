open(ARGV.first).read.split("\n").each do |line|
  number, p1, p2 = line.split(",")[0], line.split(",")[1], line.split(",")[2]
  puts number.to_i.to_s(2)[number.to_i.to_s(2).length-p1.to_i] == number.to_i.to_s(2)[number.to_i.to_s(2).length-p2.to_i]
end