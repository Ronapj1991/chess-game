class Pawn
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    color == :white ? "\u2659" : "\u265F"
  end
end

my_pawn = Pawn.new(:white)
puts my_pawn