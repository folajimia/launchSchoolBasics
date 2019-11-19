words = "the flintstones rock"

#puts words.split.capitalize.join(" ")
puts words.split.map { |word| word.capitalize }.join(' ')
