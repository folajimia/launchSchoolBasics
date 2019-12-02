def initialize_cards
  deck = []
  ['Heart', 'Diamond', 'Clubs', 'Spades'].each do |shape|
    [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace'].each do |num|
      deck << Array.new([shape, num])
    end
  end
  deck
end

def deal_cards
  card_set = initialize_cards
  card_set.sample(2)
end

def hit(cards)
  card_set = initialize_cards
  cards << card_set.sample(1)[0]
  cards
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0
             10
           else
             value.to_i
           end
  end
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def prompt(text)
  puts "=> #{text}"
end

def display_cards(player, dealer)
  prompt "player cards are #{player}"
  prompt "Dealer cards are #{dealer}"
end

def winner(player, dealer)
  if total(player) > total(dealer)
    prompt "player won"
  elsif total(player) < total(dealer)
    prompt "dealer won"
  else
    prompt "its a draw"
  end
end

def play_again?
  prompt "*******************************"
  prompt "*******************************"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  player_choice = nil
  player_cards = deal_cards
  dealer_cards = deal_cards
  dealer_card = dealer_cards.sample(1)

  prompt " you have the cards #{player_cards[0][1]} of #{player_cards[0][0]}
  and #{player_cards[1][1]} of #{player_cards[1][0]} "
  prompt "The dealer has the card #{dealer_card[0][1]} of #{dealer_card[0][0]}
  and another card"

  # player's turn
  loop do
    prompt "Will you hit or stay ?"
    prompt "Type H to Hit and S to stay"
    player_choice = gets.chomp.upcase
    if player_choice == 'S' || busted?(player_cards)
      break
    elsif player_choice == 'H'
      player_cards = hit(player_cards)
      prompt " You chose to Hit"
      prompt player_cards
      break if busted?(player_cards)
    else
      prompt "Sorry, you must enter 'H' or 'S'."
      prompt player_cards
    end
  end

  if busted?(player_cards)
    prompt "you lost because you are busted"
    display_cards(player_cards, dealer_cards)
    play_again? ? next : break
  else
    puts "You chose to stay!"
  end
  # Dealer's turn
  loop do
    break if  total(dealer_cards) >= 17 || busted?(dealer_cards)

    dealer_cards = hit(dealer_cards)
    prompt dealer_cards
  end
  if busted?(dealer_cards)
    prompt "Dealer got busted"
    display_cards(player_cards, dealer_cards)
    play_again? ? next : break
  else
    puts "Deal chose to stay!"
  end

  display_cards(player_cards, dealer_cards)
  winner(player_cards, dealer_cards)

  break unless play_again?
end
