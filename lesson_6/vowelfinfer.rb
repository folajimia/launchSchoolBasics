#A, E, I, O, U, and sometimes Y.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = 'aeiou'

hsh.each do | _, words|
  words.each do |word|
    word.chars do |char|
      puts char if vowels.include?(char)
    end
  end
end


