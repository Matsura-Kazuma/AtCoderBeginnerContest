loop do
  n,x = gets.chomp.split(' ').map(&:to_i)
  break if n == 0 && x == 0

  c = 0
  [*1..n].combination(3) do  |cel|
    c += 1 if cel.inject(:+) == x
  end
  puts c
end


