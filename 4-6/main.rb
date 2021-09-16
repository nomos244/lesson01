time = {hour: "time", minite: "minite"}

time[:hour] = ARGV[0].match(/(.*):/)[1].to_i
time[:minite] = ARGV[0].match(/:(.*)/)[1].to_i

if time[:minite] + 45 >= 60
  time[:minite] += (45 - 60)
  if time[:hour] + 1 >= 24
    time[:hour] += (1 - 24)
  else
    time[:hour] += 1
  end
else
  time[:minite] += 45
end

puts time.values