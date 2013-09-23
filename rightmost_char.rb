open(ARGV.first).read.split("\n").each do |line|
  str, letter = line.split(",")
  ind = -1
  str.split("").each_with_index do |let,index|
    if let == letter
      ind = index
    end
  end
  puts ind
end