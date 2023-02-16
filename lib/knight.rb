class Knight
  attr_reader :color

  def initalize(color)
    @color = color
  end

  def to_s
    color == :white ? "\u2658" : "\u265E"
  end
end