num_arr = gets.chomp.chars.map(&:to_i)
size =  num_arr.select{|num|num == 1}.size
print("#{size}\n")

