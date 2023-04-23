a = gets.chomp.to_i
b,c = gets.chomp.split(' ').map{|n|n.to_i}
d = gets.chomp

num = (a+b+c).to_s

print("#{num} #{d}\n")
