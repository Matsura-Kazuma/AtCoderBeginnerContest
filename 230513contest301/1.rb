n = gets.chomp.to_i
s = gets.chomp

t = s.count("T")
a = s.count("A")

if t == a
  if s.chars.last == "A"
    puts "T"
  else
    puts "A"
  end
elsif  t > a
    puts "T"
else
    puts "A"
end
