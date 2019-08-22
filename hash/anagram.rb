words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


#ana = []
#words.each do |first_word|
#  words.each do |word|
#    if first_word.chars.sort.join == word.chars.sort.join
#      ana.push(first_word)
#      ana.uniq!
#    end
#  end
#end

#words.each do |word|
  #if first_word == word.reverse
#  puts word
#  ana.push(word)
#end
ana = {}
words.each do |word|
  key = word.chars.sort.join
    if ana.has_key?(key)
      ana[key].push(word)
    else
      ana[key] = [word]
    end
  end

  ana.each_value do |value|
    p value
  end
