s = gets.chomp.chars

arr = []
s.each_with_index do |char, i|
  count = 0
  while s[i]&.match?(/[ACGT]/)
    count += 1
    i +=1
  end
  arr << count
end

puts arr.max

