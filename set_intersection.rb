open(ARGV.first).read.split("\n").each do |line|
  first,second = line.split(";")
  intersection = {}
  first.split(",").each do |el|
    intersection[el]= true
  end
  final_intersection = {}
  second.split(",").each do |el|
    final_intersection[el] = true if intersection[el]
  end
  puts final_intersection.keys.join(",")
end

