
file_name = ARGV.first
lines_hash = {}
list = open(file_name).read.split("\n")
n = list.first.to_i
list.delete_at(0)
list.each do |t|
  if lines_hash[t.length].nil?
    lines_hash[t.length] = [t]
  else
    lines_hash[t.length] << t
  end
end

lines_hash.sort.reverse.map do |key,value|
  unless n==0
    value.each do |val|
      unless n==0
        unless val.empty?
          puts val.rstrip
          n -= 1
        end
      end
    end
  end
end