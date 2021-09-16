array = []
asc = []

ARGV.each do |argv|
  array << argv.to_i
end

for i in 0..array.length-1 do
  minIndex = 0
  for j in 0..array.length-1 do
    if array[minIndex] > array[j]
      minIndex = j
    end
  end
  asc[i] = array[minIndex]
  array[minIndex] = 10000
end

puts asc.join(", ")