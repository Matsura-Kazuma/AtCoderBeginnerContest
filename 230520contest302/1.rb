a,b  = gets.chomp.split(' ').map(&:to_i)
syo, amari = a.divmod(b)

if amari == 0
  puts syo
else
  puts syo+1
end