require 'json'
users = []
salarys = []

File.open("users.json") do |file|
  @tmps = JSON.load(file) #name,rank,year
  @tmps = @tmps["users"]
end

@tmps.each do |tmp|
  users <<  Hash[tmp.map{|k,v| [k.to_sym,v]}]
end

users.each do |user|
  case user[:rank]
  when "A"
    if user[:years] < 5
      salary = 3000*user[:years] + 100000
    else
      salary = 3000*user[:years]+120000
    end
  when "B"
    salary = 4000*user[:years]+140000
  when "C"
    salary = 5000*user[:years]+160000
  end
  salarys << {name: user[:name], salary: salary}
end

salarys = salarys.sort_by{|x| x[:salary]}.reverse

salarys.each do |salary|
  puts "#{salary[:name]}:#{salary[:salary]}"
end