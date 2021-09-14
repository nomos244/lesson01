def maxNum(array)
  @max = 0
  array.each do |a|
    if @max < a
      @max = a
    end
  end
  return @max
end

def outputHistogram(frequency)
  @height = maxNum(frequency)
  @width = 10
  for i in (1..@height).to_a.reverse
    for j in 1..@width
      print("  ")
      if frequency[j] >= i
        print("*")
      else
        print(" ")
      end
    end
    puts ""
  end
end

def outputLabel
  puts "----------------------------------"
  puts "0 10 20 30 40 50 60 70 80 90 100"
end

STUDENTS = [17,38,100,95,23,62,77,45,69,81,83,51,42,36,60]
@frequency = Array.new(11, 0)

STUDENTS.each_with_index do |stu,i|
  @frequency[stu/10] += 1
end

outputHistogram(@frequency)
outputLabel