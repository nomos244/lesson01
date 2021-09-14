def makeStep(mark:,num:)
  for i in 1..num
    print(mark)
  end
end

steps = ARGV[0].to_i

for i in 1..steps do
  asterisk = 2*i - 1
  blank = steps - i
  makeStep(mark:" ", num:blank)
  makeStep(mark:"*", num:asterisk)
  print("\n")
end