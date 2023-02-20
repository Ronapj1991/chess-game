class Pawn
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    color == :white ? "\u265F" : "\u2659"
  end
end