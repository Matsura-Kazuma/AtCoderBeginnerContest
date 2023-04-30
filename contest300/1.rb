n,a,b =gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)

x = a +  b 
c.each_with_index do |cel, i|
  if x == cel
    @k =  i+1
    break
  end
end

puts @k
