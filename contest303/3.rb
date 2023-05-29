n,m,h,k= gets.chomp.split(' ').map(&:to_i)
s = gets.chomp.chars
items = []
m.times{
  items << gets.chomp.split(' ').map(&:to_i)
}

move = {"R"=>[1,0],"L"=>[-1,0],"U"=>[0,1],"D"=>[0,-1]}

init = [0,0]
s.each do |i|
  init[0] += move[i][0]
  init[1] += move[i][1]
  h -= 1
  if h < 0
    puts "No"
    exit
  end
  if h < k
    next if items.delete(init).nil?
    h = k
  end
end

puts "Yes"