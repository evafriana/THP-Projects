class Board
  attr_accessor :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def board_display
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '-' * 11
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '-' * 11
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
