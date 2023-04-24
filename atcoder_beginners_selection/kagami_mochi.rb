n = gets.chomp.to_i
mochi = []
n.times{
  mochi << gets.chomp.to_i 
}

puts mochi.uniq.size
