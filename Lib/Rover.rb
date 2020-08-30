class Rover
  attr_accessor :x, :y, :direction
  PLATEAU_BORDERS = [0, 5].freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(input) # Implement plateau class
    raise "Can't travel, wrong input given." if wrong_input(input)
    raise 'Cannot move any further North or East' if @y >= PLATEAU_BORDERS[1] || @x >= PLATEAU_BORDERS[1]
    raise 'Cannot move any further South or West' if @y <= PLATEAU_BORDERS[0] || @x <= PLATEAU_BORDERS[0]

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

  def wrong_input(input)
    input != 'M'
  end

  def turn(input) # Move turning to another class called directions?
    @direction = input == 'R' && @direction == 'N' ? 'E' : 'N'
    "Rover is now facing #{@direction}"
    # Still in Progress
  end

  def to_s
    "#{@x} #{@y} #{@direction}"
  end
end

# Implement changing right or left - Implement Direction class?
# Add plateau constraints to a seperate class called Plateau?
