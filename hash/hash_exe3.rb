

my_hash = {leaves:'Tree',hand: 'human', tail: 'dogs'}


my_hash.each_key do |key|
  puts key
end

my_hash.each_value do |value|
  puts value
end


my_hash.each do |key, value|
  puts "#{key} and a #{value}         "
end


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

called = person.select do |tree|
  tree == :name
end

puts called.values
