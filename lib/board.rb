class Board
  attr_accessor :coordinates

  def initialize
    @coordinates = {
      :a => Array.new(8, " "),
      :b => Array.new(8, " "),
      :c => Array.new(8, " "),
      :d => Array.new(8, " "),
      :e => Array.new(8, " "),
      :f => Array.new(8, " "),
      :g => Array.new(8, " "),
      :h => Array.new(8, " ")
    }
  end

  def to_s
    %{
     |#{coordinates[:a][7]}|#{coordinates[:b][7]}|#{coordinates[:c][7]}|#{coordinates[:d][7]}|#{coordinates[:e][7]}|#{coordinates[:f][7]}|#{coordinates[:g][7]}|#{coordinates[:h][7]}|
     |#{coordinates[:a][6]}|#{coordinates[:b][6]}|#{coordinates[:c][6]}|#{coordinates[:d][6]}|#{coordinates[:e][6]}|#{coordinates[:f][6]}|#{coordinates[:g][6]}|#{coordinates[:h][6]}|
     |#{coordinates[:a][5]}|#{coordinates[:b][5]}|#{coordinates[:c][5]}|#{coordinates[:d][5]}|#{coordinates[:e][5]}|#{coordinates[:f][5]}|#{coordinates[:g][5]}|#{coordinates[:h][5]}|
     |#{coordinates[:a][4]}|#{coordinates[:b][4]}|#{coordinates[:c][4]}|#{coordinates[:d][4]}|#{coordinates[:e][4]}|#{coordinates[:f][4]}|#{coordinates[:g][4]}|#{coordinates[:h][4]}|
     |#{coordinates[:a][3]}|#{coordinates[:b][3]}|#{coordinates[:c][3]}|#{coordinates[:d][3]}|#{coordinates[:e][3]}|#{coordinates[:f][3]}|#{coordinates[:g][3]}|#{coordinates[:h][3]}|
     |#{coordinates[:a][2]}|#{coordinates[:b][2]}|#{coordinates[:c][2]}|#{coordinates[:d][2]}|#{coordinates[:e][2]}|#{coordinates[:f][2]}|#{coordinates[:g][2]}|#{coordinates[:h][2]}|
     |#{coordinates[:a][1]}|#{coordinates[:b][1]}|#{coordinates[:c][1]}|#{coordinates[:d][1]}|#{coordinates[:e][1]}|#{coordinates[:f][1]}|#{coordinates[:g][1]}|#{coordinates[:h][1]}|
     |#{coordinates[:a][0]}|#{coordinates[:b][0]}|#{coordinates[:c][0]}|#{coordinates[:d][0]}|#{coordinates[:e][0]}|#{coordinates[:f][0]}|#{coordinates[:g][0]}|#{coordinates[:h][0]}|
    }
  end

  def []=(location, piece)
    row, col = location
    coordinates[row][col] = piece
  end

  def valid_location?(location)
    row, col = location
    #has to be refactored to match 8 by 8 board
    row >= 0 && row <= 4 &&
    col >= 0 && col <= 4
  end

end