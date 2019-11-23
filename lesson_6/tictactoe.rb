require 'byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts msg.to_s
end

def joinor(arr, delimiter=',', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def select_to_five(brd, marker)
  brd[5]= marker
  brd
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are an #{PLAYER_MARKER} and computer is an #{COMPUTER_MARKER}"
  puts""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def computer_places_pieces(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd,  COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square && brd[5] == INITIAL_MARKER
    square = select_to_five(brd, COMPUTER_MARKER)
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
    #can be simplified with splat operator as brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def player_places_pieces(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_squares(brd).join(', ')}):")
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry this is not a valid choice"
    end
  end
  brd[square] = PLAYER_MARKER
end

def place_piece!(board, current_player)
  if current_player == 'player'
    player_places_pieces(board)
  else
    computer_places_pieces(board)
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    return 'computer'
  else
    return 'player'
  end
end

def select_first_player
  loop do
    prompt "Choose who will play first, Computer ? or Player ?"
    prompt "Type 1 for the player to start"
    prompt "Type 2 for the computer to start"
    choice = gets.chomp
    if choice == '1'
      return 'player'
      break
    elsif choice == '2'
      return 'computer'
      break
    else
      prompt "you can only pick 1 for  player or 2 for computer"
    end
  end
end

#Execution starts
loop do
  board = initialize_board
  current_player = select_first_player

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end
  #display_board(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "it is a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tic tac toe! Goodbye!"
