
def cap_sir(word)
  if word.length > 10
    word.upcase
  else
    word
  end
end

puts "enter a word longet that 10 chars to cap up"
word = gets.chomp
puts cap_sir(word)
