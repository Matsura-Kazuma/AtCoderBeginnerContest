input, a, b = gets.chomp.split(' ') .map(&:to_i)

output = 0
(0..input).each do |n|
  n_sum =  n.to_s.chars.map(&:to_i).inject(:+)  #.sum↲
  if (a <= n_sum) && (n_sum <= b)
    output += n
  end
end

puts output 
