class Game
  attr_accessor :board, :player1, :player2

  def initialize
    @board = Board.new
    @player1 = nil
    @player2 = nil
    @turn = 0
    @current_player = @player1
    @parties = 1
  end

  def welcome
    puts ''
    puts '------------------------------------------------'
    puts '|                                              |'
    puts '|                 Bienvenue!🤩                 |'
    puts '|                                              |'
    puts '|                  T | I | C                   |'
    puts '|                 -----------                  |'
    puts '|                  T | A | C                   |'
    puts '|                 -----------                  |'
    puts '|                  T | O | E                   |'
    puts '|                                              |'
    puts '------------------------------------------------'
    puts ''
  end

  def board_display
    puts "Partie #{@parties}"
    puts ''
    @board.board_display
    puts ''
  end

  def call
    puts 'Quel est le nom du joueur 1?'
    print '> '
    p1 = gets.chomp
    puts "\nQuel est le nom du joueur 2?"
    print '> '
    p2 = gets.chomp
    @player1 = Player.new(p1.capitalize, 'X')
    @player2 = Player.new(p2.capitalize, 'O')
  end

  def win_combinations
    [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [6, 4, 2],
      [0, 4, 8]
    ]
  end

  def move(position, player)
    @board.board[position] = player.token
  end

  def position_taken?(input)
    @board.board[input] == 'X' || @board.board[input] == 'O'
  end

  def valid_move?(input)
    input.between?(0, 8) && !position_taken?(input)
  end

  def choice
    puts "#{@current_player.name}, choisi un numero entre 1 et 9"
    print '> '
    gets.strip.to_i - 1
  end

  def change_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def player_turn
    input = choice
    if valid_move?(input)
      move(input, @current_player)
      change_player
      @turn += 1
      end?
    else
      puts "Ce move n'est pas valide. Rééssaie!"
      player_turn
    end
  end

  def won?
    win_combinations.detect do |combo|
      @board.board[combo[0]] == @board.board[combo[1]] && @board.board[combo[1]] == @board.board[combo[2]] && position_taken?(combo[0])
    end
  end

  def full?
    @turn == 9
  end

  def end?
    won? || full?
  end

  def this_is_the_end
    puts "\nMerci d'avoir joué #{@parties} fois à mon TicTacToe"
    puts "\n#{player1.name} a gagné #{player1.wins} fois"
    puts "\n#{player2.name} a gagné #{player2.wins} fois"
    puts "\nA bientôt!"
    puts ''
  end

  def winner
    @current_player == @player1 ? @player2 : @player1
  end

  def who_wins
    if full?
      puts 'Egalité! Bravo à vous deux.'
    else
      winner.wins += 1
      puts "#{winner.name} a gagné. En tout, ça fait #{winner.wins} fois."
    end
  end

  def play_again
    puts "\nVoulez-vous rejouer ? ('Y' pour rejouer)"
    input = gets.chomp
    if input == 'y' || input == 'Y'
      @board = Board.new
      @turn = 0
      @parties += 1
      turn
    else
      this_is_the_end
    end
  end

  def turn
    until end?
      puts `clear`
      board_display
      @current_player.nil? ? @current_player = @player1 : @current_player
      player_turn
    end
    puts `clear`
    board_display
    who_wins
    play_again
  end

  def perform
    welcome
    call
    turn
  end
end
