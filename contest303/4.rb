require 'pry-byebug'
x,y,z= gets.chomp.split(' ').map(&:to_i)
s = gets.chomp.chars

arr = []
s.each_with_index do |char,i|
  next if i==0
  binding.pry
  count = 0
  while char[i-1] == char[i]
    count += 1
    i += 1
  end
  arr << {char[i-1]=>count}
  s = s[count..-1]
end


m2330110@gl.cc.uec.ac.jp
m2330110@gl.cc.uec.ac.jp