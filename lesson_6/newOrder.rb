arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

test = []

test = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    require 'byebug'
    byebug
    b <=> a
    byebug
  end
  
end

p test
p arr


