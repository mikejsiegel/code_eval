open(ARGV.first).read.split("\n").each do |number|
  self_describing = true
  number_occurances = {}
  number.split("").each do |value|
    if number_occurances[value].nil?
      number_occurances[value] = 1
    else
      number_occurances[value] += 1
    end
  end
  number.split("").each_with_index do |value,index|
    if number_occurances[index.to_s].to_s == value or (number_occurances[index.to_s].nil? and value=="0")
      next
    else
      self_describing = false
      break
    end
  end
  if self_describing
    puts 1
  else
    puts 0
  end
end