file_name = ARGV.first
lines_hash = {}
list = open(file_name).read.split("\n")
list.each do |t|
  a,b,n = t.split(" ")[0].to_i, t.split(" ")[1].to_i, t.split(" ")[2].to_i
  count = 1
  string = ""
  while count <= n
    if count % a == 0
      if count % b == 0
        string += "FB "
      else
        string += "F "
      end
    else
      if count % b == 0
        string += "B "
      else
        string += "#{count} "
      end
    end
    count += 1
  end
  puts string.rstrip
end