str = "こはるはるここはるここはるはるここはるこはるはるはる"
array = str.chars
countKoharu = 0
countHaruko = 0

for i in 0..array.length-3 do
  name = array[i] + array[i+1] + array[i+2]
  if name == "こはる"
    countKoharu += 1
  elsif name == "はるこ"
    countHaruko += 1
  end
  name = ""
end

puts "こはる:#{countKoharu}"
puts "はるこ:#{countHaruko}"