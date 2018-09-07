class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
end

# The "pipes" || = or. This is saying that if the board returns nil, return an empty array.  So, either display the current board, or a new one.

# WIN_COMBINATIONS within the body of TicTacToe
board = [" "," "," "," "," "," "," "," "," "]
WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  #display_board: not the instance variable @board

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  # input_index

  def input_to_index(user_input)
    user_input.to_i - 1
  end
