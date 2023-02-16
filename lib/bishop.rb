class Bishop
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    color == :white ? "\u2657" : "\u265D"
  end
end