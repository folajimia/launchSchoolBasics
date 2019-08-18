puts 'Enter a command'
input = gets.chomp.upcase
while input != "STOP"
  puts 'Wrong commmand, Please enter another that will end this misery'
  input = gets.chomp.upcase
  #if input == "STOP"
    #puts 'You just entered the right Command, SHUTTING DOWN ....'
    #puts 'Dying'
    #puts '....the end'
    #break
  #end
end
