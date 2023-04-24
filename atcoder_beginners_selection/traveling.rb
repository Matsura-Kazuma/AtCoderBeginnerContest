n = gets.chomp.to_i
#初期位置を代入
root = [[0,0,0]]
n.times{
  root << gets.chomp.split(' ').map(&:to_i)
}

root.each_with_index do |r, i|
  # startは飛ばす
  next if i == 0
  time = r[0]-root[i-1][0] #必ず正
  x_abs = (r[1]-root[i-1][1]).abs
  y_abs = (r[2]-root[i-1][2]).abs
  distance = x_abs+y_abs
  if time < distance
    puts "No"
    exit
  elsif time%distance != 0
    puts "No"
    exit
  end
end

puts "Yes"
