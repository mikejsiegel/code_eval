file_name = ARGV.first
open(file_name).read.split("\n").each do |line|
  puts line.split(" ").reverse.join(" ")
end