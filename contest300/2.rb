h,w =gets.chomp.split(' ').map(&:to_i)
a = []
b = []
h.times{
  a << gets.chomp.chars
}
h.times{
  b << gets.chomp.chars
}

def tate(arr)
  tmp =  arr[1..arr.size] << arr.first
end

def yoko(arr)
  arr.map do |cel|
    cel.rotate
  end
end

@a = a
(1..h).each do |t|
  (1..w).each do |k|
    t.times{
      @a = tate(@a)
    }
    k.times{
       @a =  yoko(@a)
    }
    if b == @a
      puts "Yes"
      exit
    end
  end
end 
puts "No"

