s = gets.chomp
l = s.size

while l > 0 
  if s.slice(-7,7) == 'dreamer'
    s = s[0..-8]
    l = s.size
  elsif s.slice(-6,6) == 'eraser'
    s = s[0..-7]
    l = s.size
  elsif s.slice(-5,5).match?(/dream|erase/)
    s = s[0..-6] 
    l = s.size
  else
    break
  end
end 

if l == 0
  puts "YES"
else
  puts "NO"
end 
