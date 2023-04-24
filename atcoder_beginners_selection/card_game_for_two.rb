n = gets.chomp.to_i
input = gets.chomp.split(' ').map(&:to_i)
sort = input.sort.reverse
sort_size = sort.size
n = sort_size/2
arr_set = sort.each_slice(2).to_a
alice = 0
bob = 0
arr_set.each do |cel|
  alice += cel[0]
  next if cel.size == 1
  bob += cel[1] 
end

puts alice - bob
