arr = [1, 3, 5, 7, 9, 11]
number = 3

def included(number, arr)
  if arr.include?(number)
    puts "#{number} is in the array #{arr}"
  else
    puts "#{number} is not in the array #{arr}"
  end
end

included(number, arr)
