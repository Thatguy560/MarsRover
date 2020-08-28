class Rover
  attr_accessor :x, :y, :direction
  COORDINATE_CONSTRAINTS = [0, 5].freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end
end
