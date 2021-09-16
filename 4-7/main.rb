str = ARGV[0].split(",").map{|factor| factor.downcase}.sort

puts str.select{|s| s.include?("a")}