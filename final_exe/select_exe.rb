#new_list =[]
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#my_list.select do |item|
#  if item.odd?
#    new_list.push(item)
#  end

#end

#p new_list


new_list = my_list.select do |item|
  item.odd?
end

p new_list
