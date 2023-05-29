n,m= gets.chomp.split(' ').map(&:to_i)
pic = []
m.times{
   num = gets.chomp.split(' ').map(&:to_i)
   num.each_with_index do |s,i|
    next if i == 0
    pic << [num[i-1],num[i]].sort
   end
}
group = [*1..n].combination(2).to_a 

puts (group - pic).size