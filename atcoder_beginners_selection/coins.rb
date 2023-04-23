a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
input = gets.chomp.to_i
#a, b, c, x = readlines(chomp: true).map(&:to_i)

count = 0
(0..a).each do |x|
  (0..b).each do |y|
    (0..c).each do |z|
      if ( (x*500) +(y*100) +(z*50)) == input
        count+=1
      end
    end
  end
end

puts count 
