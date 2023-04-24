n,y = gets.chomp.split(' ').map(&:to_i)

#1000で割って桁数を低くする
y = y/1000

#お札も1000で割る
a = 1
b = 5
c = 10

(0..n).each do |j|
  (0..(n-j)).each do |k| 
    if 10*j + 5*k + 1*(n-j-k) == y
      puts "#{j} #{k} #{n-j-k}"
      exit
    end
  end
end

puts "-1 -1 -1 "

