arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
new_arr = {}

arr.map do |sub_arr|
  new_arr[sub_arr[0]]=sub_arr[1]
  #puts sub_arr[0]
  #puts sub_arr[1]
end

p new_arr
