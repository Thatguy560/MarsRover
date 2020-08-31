class Rover
  attr_accessor :x, :y, :direction
  PLATEAU_BORDERS = [0, 5].freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(input) # Add plateau constraints to seperate class called Plateau?
    raise 'Cannot move any further North' if @y >= PLATEAU_BORDERS[1]
    raise 'Cannot move any further East' if @x >= PLATEAU_BORDERS[1]
    raise 'Cannot move any further South' if @y <= PLATEAU_BORDERS[0]
    raise 'Cannot move any further West' if @x <= PLATEAU_BORDERS[0]
    @y += 1 if facing_north && moving(input)
    @x += 1 if facing_east && moving(input)
    @y -= 1 if facing_south && moving(input)
    @x -= 1 if facing_west && moving(input)
    "Current Rover co-ordinates are #{@x} : #{@y} : #{@direction}"
  end

  def facing_north
    @direction == 'N'
  end

  def facing_east
    @direction == 'E'
  end

  def facing_south
    @direction == 'S'
  end

  def facing_west
    @direction == 'W'
  end

  def moving(input)
    input == 'M'
  end

  # Move turning to another class called directions?
  def turn(input)
    (input == 'L' && @direction == 'N') ? @direction = "W" : (input == 'L' && @direction == 'W') ? @direction = "S" : (input == 'L' && @direction == 'S') ? @direction = "E" : (input == 'L' && @direction == 'E') ? @direction = "N" : @direction
    (input == 'R' && @direction == 'N') ? @direction = "E" : (input == 'R' && @direction == 'E') ? @direction = "S" : (input == 'R' && @direction == 'S') ? @direction = "W" : (input == 'R' && @direction == 'W') ? @direction = "N" : @direction
    "Rover is now facing #{@direction}"
  end

  def to_s
    "#{@x} #{@y} #{@direction}"
  end
end

# Implement changing right or left - Implement Direction class?
