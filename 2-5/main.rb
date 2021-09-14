price = ARGV[0].to_i

hundreds = price/100
price %= 100
tens = price/10
price %= 10

puts "100円玉#{hundreds}枚, 10円玉#{tens}枚, 1円玉#{price}枚"