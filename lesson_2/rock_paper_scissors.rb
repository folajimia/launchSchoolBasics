=begin
Scissors cut Paper
Paper covers Rock
Rock crushes Lizard
Lizard poisons Spock
Spock smashes Scissors
Scissors decapitate Lizard
Lizard eats Paper
Paper disproves Spock
Spock vaporizes Rock
Rock crushes Scissors

=end





VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

def prompt(message)
  puts "=>#{message}"
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "scissors" && second == "paper") ||
    (first == "paper" && second == "rock") ||
    (first == "rock" && second == "lizard") ||
    (first == "lizard" && second == "spock") ||
    (first == "spock" && second == "scissors") ||
    (first == "scissors" && second == "lizard") ||
    (first == "lizard" && second == "paper") ||
    (first == "paper" && second == "spock") ||
    (first == "spock" && second == "rock")

end

def display_results(player, computer)
  puts("You chose: #{player}; Computer chose: #{computer}")
  if win?(player, computer)
    prompt("you won")
  elsif win?(computer, player)
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
