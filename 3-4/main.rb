def reverse(num)
  iMax = num.length/2
  for i in 0..iMax do
    tmp = num[i]
    num[i] = num[num.length-1-i]
    num[num.length-1-i] = tmp
  end
  return num
end

num1 = reverse(ARGV[0].chars)
num2 = reverse(ARGV[1].chars)

puts num1.join.to_i + num2.join.to_i