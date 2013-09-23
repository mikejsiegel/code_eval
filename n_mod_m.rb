open(ARGV.first).read.split("\n").each do |line|
  n,m = line.split(",").first, line.split(",").last
