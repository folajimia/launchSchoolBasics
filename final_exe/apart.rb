
#single_words = []
words = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']

#words.each do |word|
#  single_words.push(word.split(" "))
#end

#p  single_words.flatten


single_words = words.map {|word| word.split(" ")}
a= single_words.flatten
p a
