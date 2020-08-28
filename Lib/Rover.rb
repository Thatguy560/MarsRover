class Rover
  attr_accessor :x, :y, :direction
  COORDINATE_CONSTRAINTS = [0, 5].freeze # Add constraints to a seperate file called plateau.

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move_north(input)
    raise "can't travel, wrong input given." if wrong_input(input)
    raise "can't travel north, not in the correct direction." unless is_north(input)

    @y += 1 if is_north(input)
  end

  def move_south(input)
    raise "can't travel, wrong input given." if wrong_input(input)
    raise "can't travel south, not in the correct direction." unless is_south(input)

    @y -= 1 if is_south(input)
  end

  def move_east(input)
    raise "can't travel, wrong input given." if wrong_input(input)
    raise "can't travel east, not in the correct direction." unless is_east(input)

    @x += 1 if is_east(input)
  end

  def move_west(input)
    raise "can't travel, wrong input given." if wrong_input(input)
    raise "can't travel west, not in the correct direction." unless is_west(input)

    @x -= 1 if is_west(input)
  end

  def is_north(input)
    input == 'M' && @direction == 'N'
  end

  def is_south(input)
    input == 'M' && @direction == 'S'
  end

  def is_east(input)
    input == 'M' && @direction == 'E'
  end

  def is_west(input)
    input == 'M' && @direction == 'W'
  end

  def wrong_input(input)
    input != 'M'
  end

  def get_current_position # Put this in another file called co-ordinates.
    "#{@x} : #{@y} : #{@direction}"
  end
end

# Directions for movement are done, now just to implement changing right or left

# Possibly down the line change move west, move east etc. methods to just move method and
# have it just down to one functionality, as long as conditions are met should be fine.
# so if input is 'M' and direction is just "S" then move south.
