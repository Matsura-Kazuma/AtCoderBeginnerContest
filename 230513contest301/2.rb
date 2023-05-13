n = gets.chomp.to_i
s = gets.chomp.split(' ').map(&:to_i)


s.each_with_index do |x, i|
  #binding.pry
  if s.size == i+1
    puts s.join("\s")
    exit
  end
  if (k = s[i] - s[i+1]).abs > 1
    if k > 0
      s.insert(i+1, x-1)
    else
      s.insert(i+1, x+1)
    end
  end
end

