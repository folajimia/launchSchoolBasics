
names_and_age = {jimi:'45', dotun:'34', jaiye:'54'}
drinks_and_fruits = {coke: 'cola', gingerbeer: 'ginger', jimi:'66'}






puts names_and_age
puts drinks_and_fruits
using_merge = names_and_age.merge(drinks_and_fruits)
puts using_merge
puts names_and_age
puts drinks_and_fruits
puts '--------------------'

puts names_and_age
puts drinks_and_fruits
using_merge_factorial = names_and_age.merge!(drinks_and_fruits)
puts using_merge_factorial
puts names_and_age
puts drinks_and_fruits
