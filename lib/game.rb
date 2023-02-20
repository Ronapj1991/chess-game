require_relative "board.rb"
require_relative "pawn.rb"

module Game
  def self.new_game
    board = Board.new()
    self.set_pawns(board)
    puts board
  end

  def self.set_pawns(board)
    board.coordinates.each_key do |col|
      location = [col, 1]
      board[location]= Pawn.new(:white)
    end

    board.coordinates.each_key do |col|
      location = [col, 6]
      board[location]= Pawn.new(:black)
    end
  end

end

Game.new_game

