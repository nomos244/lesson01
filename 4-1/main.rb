def inputNums
  nums = []
  i = 0
  while true
    nums << ARGV[i].to_i
    i += 1
    if ARGV[i] == nil
      break
    end
  end
  return nums
end

def sortDesc(nums)
  desc = []
  for i in 0..nums.length-1 do
    maxIndex = 0
    for j in 0..nums.length-1 do
      if nums[maxIndex] <= nums[j]
        maxIndex = j
      end
    end
    desc << nums[maxIndex]
    nums[maxIndex] = 0
  end
  return desc
end

nums = inputNums
medianIndex = (nums.length+1)/2
puts sortDesc(nums)[medianIndex-1]