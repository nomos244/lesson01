require 'json'
playdata = []
songs = []

File.open("playdata.json") do |file|
  @tmps = JSON.load(file)
  @tmps = @tmps["data"]
end

@tmps.each do |tmp|
  playdata <<  Hash[tmp.map{|k,v| [k.to_sym,v]}]
end

File.open("songs.json") do |file|
  @tmps = JSON.load(file)
  @tmps = @tmps["songs"]
end

@tmps.each do |tmp|
  songs <<  Hash[tmp.map{|k,v| [k.to_sym,v]}]
end

playdata = playdata.sort_by{|datum| datum[:count].to_i}.reverse

playdata.each_with_index do |datum, i|
  title = songs[datum[:id].to_i-1][:title].gsub(/[[:cntrl:]]/,"")
  print(i+1, "位:", title + "\t #{datum[:count]}")
  puts ""
end
# puts songs[playdata[0][:id].to_i-1][:title]