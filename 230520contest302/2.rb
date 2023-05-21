require 'pry-byebug'
n, x = gets.chomp.split(' ').map(&:to_i)
str = []
n.times{
  str << gets.chomp.chars
}
#binding.pry

s_str = []
str.each_with_index do |arr,i|
  arr.each_with_index do |cel,k|
    if cel == "s"
      s_str<< [i,k]
    end
  end
end

n_str = []
str.each_with_index do |arr,i|
  arr.each_with_index do |cel,k|
    if cel == "n"
      n_str << [i,k]
    end
  end
end

n_kouho=[]
s_str.each do |basyo|
  n_kouho << [basyo[0]-1,basyo[1]]
  n_kouho << [basyo[0]+1,basyo[1]]
  n_kouho << [basyo[0],basyo[1]+1]
  n_kouho << [basyo[0],basyo[1]+1]
end 
binding.pry

puts 1 