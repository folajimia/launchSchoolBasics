require 'pry'
b = 0
a = 0

loop do 
  a += 1
  binding.pry
  b += 1
  break if b >= 3
end