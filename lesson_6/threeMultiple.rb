arr = [[2], [3, 5, 7, 9], [9], [11, 13, 15]]

new_arr=[]
arr.map do |sub_arr|
  new_sub_arr = []
  sub_arr.reject do |num|
    #num % 3 ==0 
    new_sub_arr << num if num % 3 ==0 
  end
  new_arr << new_sub_arr
end

p new_arr