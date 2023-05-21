n, x = gets.chomp.split(' ').map(&:to_i)
str = []
n.times{
  str << gets.chomp.chars
}

str = str.permutation.to_a

str.each do |arr|
  real = 0
  arr.each_with_index do |k,i|
    next if i == 0
    #binding.pry
    count = 0
    sucess = 0
    arr[i-1].zip(arr[i]) do |x,y|
      if x == y
        sucess += 1
      else
        count += 1
        break if count > 1
      end
    end
    next if count > 1
    real += 1
  end
  if real == n-1
    puts "Yes"
    exit
  end
end

puts "No"

