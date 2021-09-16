factorNum = 10
nums = Array.new(factorNum)

for i in 0..factorNum-1 do
  nums[i] = rand(factorNum)
end

nums.each do |num|
  print(num," ")
end
puts ""