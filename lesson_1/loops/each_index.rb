

b_array = ['femi','kemi','lolade','bolaji','ade','gbemi']

#def each_with_index(b_array)
#  x = 1
#  b_array.each do |value|
#    puts "index is #{x}"
#    puts "value is #{value}"
#    x += 1
#  end
#end

#each_with_index(b_array)

b_array.each_with_index do |b, index|
  puts "#{index + 1}, #{b}"
end
