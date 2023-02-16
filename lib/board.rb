class Board
  attr_accessor :grid

  def initialize
    @grid = [
      [" ", " ", " ", " "],
      [" ", " ", " ", " "],
      [" ", " ", " ", " "],
      [" ", " ", " ", " "]
    ]
  end

  def []=(location, piece)
    row, col = location
    grid[row][col] = piece
  end

  def valid_location?(location)
    row, col = location

    row >= 0 && row <= 4 &&
    col >= 0 && col <= 4
  end
end

b = Board.new()
loc = [0, 9]
b[loc] = "X"
p b.valid_location?(loc)