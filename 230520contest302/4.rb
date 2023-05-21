n, m, d = gets.chomp.split(' ').map(&:to_i)
n_pre = gets.chomp.split(' ').map(&:to_i)
m_pre = gets.chomp.split(' ').map(&:to_i)

#binding.pry
pre = []
n_pre.each do |n|
  #binding.pry
  pre << [*n-d..n+d]
end
pre.flatten!

#binding.pry
if (pre & m_pre).size == 0
  puts -1
  exit
end
m_max = (m_pre -(m_pre - pre)).max
n_max = n_pre.min_by{|x| (x-m_max).abs}

puts m_max+n_max