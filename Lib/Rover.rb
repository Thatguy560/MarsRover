class Rover
  attr_accessor :x, :y, :direction
  COORDINATE_CONSTRAINTS = [0, 5].freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move_east(action)
    raise "can't travel east, not in the correct direction." unless is_east(action)

    @x += 1 if is_east(action)
  end

  def is_east(action)
    action == 'M' && @direction == 'E'
  end
end
