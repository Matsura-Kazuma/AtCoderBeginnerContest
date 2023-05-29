n = gets.chomp.to_i
s = gets.chomp.chars
t = gets.chomp.chars

str1 = ["1","l"]
str2 = ["0", "o"]
[*0...n].each do |i|
  next if s[i] == t[i]
  if str1.include?(s[i])
    next if str1.include?(t[i])
  elsif str2.include?(s[i])
    next if str2.include?(t[i])
  else
    puts "No"
    exit
  end
end

puts "Yes"