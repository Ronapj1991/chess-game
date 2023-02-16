class King
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    color == :white ? "\u2654" : "\u265A"
  end
end