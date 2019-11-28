
def initialize_cards
  deck = []
  ['Heart', 'Diamond','Clubs', 'Spades'].each do |shape|
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
  values = cards.map {|card| card[1]}

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end


def prompt(text)
  puts "=> #{text}"
end

# def player_turn(cards)
#   loop do
#     prompt "Will you hit or stay ?"
#     prompt "Type H to Hit and S to stay"
#     player_choice = gets.chomp().upcase
#     break if player_choice == 'S' || busted?(cards)
#     my_cards = hit(cards)
#     prompt my_cards
#   end
#
#   if busted?(cards)
#     prompt "its over hova" #end game or star agian
#   else
#     puts "You chose to stay!"s
#   end
#   my_cards
# end

# Dealer turn: when the player stays, it's the dealer's turn. The dealer must
# follow a strict rule for determining whether to hit or stay: hit until the total is at least 17.
#  If the dealer busts, then the player wins.
#
#    hit until the total is at least 17. If the dealer busts, then the player wins.

# def dealer_turn(cards)
#   loop do
#     break if player_choice == 'S' || busted?(cards)
#     break if total(cards) >= 17
#     deal_cards = hit(cards)
#   end
#   if busted?(cards)
#     prompt "Dealer lost it" #end game or start again
#   else
#     puts "Deal chose to stay!"
#   end
#   deal_cards
# end

def display_cards(player, dealer)
  prompt player
  prompt dealer
end

def winner(player, dealer)
  if total(player) > total(dealer)
    prompt "player won"
  elsif total(player) < total(dealer)
    prompt "dealer won"
  else
    "its a draw"
  end
end




#def display_cards



#p deal_player_cards
player_choice = nil
my_cards = []
player_cards = deal_cards
dealer_cards = deal_cards
dealer_card = dealer_cards.sample(1)


prompt " you have the cards #{player_cards[0][1]} of #{player_cards[0][0]} and #{player_cards[1][1]} of #{player_cards[1][0]} "
prompt "The dealer has the card #{dealer_card[0][1]} of #{dealer_card[0][0]} and another card"
#
# player_turn
#player_turn(player_cards)
loop do
  prompt "Will you hit or stay ?"
  prompt "Type H to Hit and S to stay"
  player_choice = gets.chomp().upcase
  break if player_choice == 'S' || busted?(player_cards)
  player_cards = hit(player_cards)
  prompt player_cards
  break if busted?(player_cards)
end

if busted?(player_cards)
  prompt "you lost because you are busted"  #end game or star agian
  exit(0)
else
  puts "You chose to stay!"
end



#dealer_turn(dealer_cards)
# player_turn

loop do
  break if total(dealer_cards) >= 17 || busted?(dealer_cards)
  deal_cards = hit(dealer_cards)
  prompt dealer_cards
end
if busted?(dealer_cards)
  prompt "Dealer got busted" #end game or start again
  exit(0)
else
  puts "Deal chose to stay!"
end


display_cards(player_cards, dealer_cards)
winner(player_cards, dealer_cards)
