puts "enter a number"
x = gets.chomp

answer = case x
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5 or 6"
end

puts answer
