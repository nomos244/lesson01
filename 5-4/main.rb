require 'json'

def check(hush:, key:)
  hush.each_key do |h_k|
    if h_k == key
      print(hush[h_k])
    else
       check(hush: hush[h_k], key: key)
    end
  end
end

File.open("kobe.json") do |file|
  @hush = JSON.load(file)
end

check(hush: @hush, key: "kobe")
puts ""