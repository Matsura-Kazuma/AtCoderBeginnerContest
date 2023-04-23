n = gets.chomp.to_i
input = gets.chomp.split(' ').map(&:to_i)
def count(arr)
  size = arr.size
  even_num = arr.find_all{|num| num%2==0 }.size
  size == even_num
end

def half(arr)
  arr.map{|num|num/2}
end

i = 0
loop{
  if count(input)
    input = half(input)
    i += 1
  else
    break
  end
}

print("#{i}\n")

