
#Given this data structure write some code to return an array containing the
# 1 colors of the fruits and
# 2the sizes of the vegetables.
#The sizes should be uppercase and the colors should be capitalized.


#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

test = [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end

puts test
p test 
