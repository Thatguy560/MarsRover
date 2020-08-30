class Rover
  attr_accessor :x, :y, :direction
  COORDINATE_CONSTRAINTS = [0, 5].freeze # Add constraints to a seperate file called plateau?

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(input)
    raise "can't travel, wrong input given." if wrong_input(input)

    # raise "cannot move any further to the right" if @y >= 5 CONSTRAINTS[1]
    # Where CONSTRANTS = [0, 5].freeze
    @y += 1 if facing_north(input)
    @y -= 1 if facing_south(input)
    @x += 1 if facing_east(input)
    @x -= 1 if facing_west(input)
    "Rover's co-ordinates are now #{@x} : #{@y} : #{@direction}"
  end

  def facing_north(input)
    input == 'M' && @direction == 'N'
  end

  def facing_south(input)
    input == 'M' && @direction == 'S'
  end

  def facing_east(input)
    input == 'M' && @direction == 'E'
  end

  def facing_west(input)
    input == 'M' && @direction == 'W'
  end

  # def turn(input)

  # end

  def wrong_input(input)
    input != 'M'
  end

  def to_s # Put this in another class called Coordinates?
    "x || y || direction\n" # Changed this and now test doesn't work
    "#{@x} || #{@y} || #{@direction}\n"
  end
end

# 1) Implement changing right or left - Implement Turn class?

# 2) Implement plateau class? so constraints to 0,5
