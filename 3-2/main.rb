rows = ARGV[0].to_i
columns = ARGV[1].to_i
mark = ["\*","-"]

for i in 1..rows do
  for j in 1..columns do
    print(mark[(i+j)%2])
  end
  print("\n")
end