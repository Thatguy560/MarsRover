class Rover
  attr_accessor :x, :y, :direction
  COORDINATE_CONSTRAINTS = [0, 5].freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move_east(input)
    raise "can't travel, wrong input given." if wrong_input(input)
    raise "can't travel east, not in the correct direction." unless is_east(input)

    @x += 1 if is_east(input)
  end

  def is_east(input)
    input == 'M' && @direction == 'E'
  end

  def wrong_input(input)
    input != 'M'
  end
end
