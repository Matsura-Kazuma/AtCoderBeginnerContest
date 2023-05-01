n = gets.chomp.to_i

a = 0
1.step(n,2).map do |cel|
  count = 0
  1.step(cel,2).each do |i|
    if cel % i == 0
      count +=1 
    end
  end
  if count == 8
    a += 1
  end
end

puts a
