class Queen
  attr_reader :color

  def initalize(color)
    @color = color
  end

  def to_s
    color == :white ? "\u2655" : "\u265B"
  end
end