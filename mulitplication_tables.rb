x = 12
y = 3

row_count = 1
column_count = 1
output = ""
while row_count <= y
  column_count = 1
  line = ""
  while column_count <= 12
    #puts row_count*column_count
    line += sprintf("%4d",row_count*column_count)
    column_count +=1
  end
  output << line.lstrip+"\n"
  row_count +=1
end
puts output