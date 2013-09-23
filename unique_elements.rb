open(ARGV.first).read.split("\n").each do |line|
  hash_line = {}
  line.split(",").each do |num|
    hash_line[num] = 1
  end
  puts hash_line.keys.join(",")
end
