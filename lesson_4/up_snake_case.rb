def upper_snake(str)
  words = str.split
  current_word = 0

  loop do

    break if current_word == words.size

    words[current_word].upcase!
    current_word += 1
  end

  words.join('_')
end

puts upper_snake('The door is green')
