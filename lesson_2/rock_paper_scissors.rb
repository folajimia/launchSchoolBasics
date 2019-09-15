VALID_CHOICES = ['rock', 'paper', 'scissors']

def test_method
  prompt('test message')
end



def prompt(message)
  puts "=>#{message}"
end

test_method

def display_results(player, computer)
  puts("You chose: #{player}; Computer chose: #{computer}")
  if (player == "rock" && computer =="scissors") ||
    (player == "scissors" && computer =="paper") ||
    (player == "paper" && computer =="rock")
    prompt("you won")
  elsif (player == "scissors" && computer =="rock") ||
    (player == "paper" && computer =="scissors") ||
    (player == "rock" && computer =="paper")
    prompt("Computer won")
  else
    prompt("It's a tie")
  end
end




loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end


  computer_choice = VALID_CHOICES.sample
  display_results(choice, computer_choice)


  prompt("Do you want to play again? Enter y")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end


prompt("Thank you for playing, Goodbye!")
