#[1]. {}

PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
INITIAL_MARKER =" "
board = {1=>' ',2=>' ',3=>' ',4=>' ',5=>' ',6=>' ',7=>' ',8=>' ',9=>' '}

def prompt (msg)
  puts '=> #{msg}'
end

def display_board(brd)
  puts system 'clear'
  puts ""
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
  puts""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_board(brd)
  brd.keys.select {|num| brd[num] = INITIAL_MARKER}
end

def player_places_pieces(brd)
  position = get.chomp()
  brd[position] = 'X'
end

def computer_places_pieces(brd)
  square = empty_board(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_board(board).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winner_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]


  winner_lines.each do |line|
    if brd[lines[0]] == PLAYER_MARKER &&
      brd[lines[1]] == PLAYER_MARKER &&
      brd[lines[2]] == PLAYER_MARKER
      return player
    elsif brd[lines[0]] == COMPUTER_MARKER &&
      brd[lines[1]] == COMPUTER_MARKER &&
      brd[lines[2]] == COMPUTER_MARKER
      return computer
    end
  end
  nil
end

      





board = initialize_board

#puts board

empty_board(board)

player_places_pieces(board)
break if someone_won? || board_full?

computer_places_pieces(board)
break if someone_won? || board_full?

display_board(board)

if someone_won?(board)
  prompt


  
