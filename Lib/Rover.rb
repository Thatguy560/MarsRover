class Rover
  attr_accessor :x, :y, :direction
  PLATEAU_BORDERS = [0, 5].freeze

  LEFT = {
    'N' => 'W',
    'E' => 'N',
    'S' => 'E',
    'W' => 'S',
  }.freeze

  RIGHT = {
    'N' => 'E',
    'E' => 'S',
    'S' => 'W',
    'W' => 'N',
  }.freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(input)
    @y += 1 if (facing_north && input == 'M') unless @y >= PLATEAU_BORDERS[1]
    @x += 1 if (facing_east && input == 'M') unless @x >= PLATEAU_BORDERS[1]
    @y -= 1 if (facing_south && input == 'M') unless @y <= PLATEAU_BORDERS[0]
    @x -= 1 if (facing_west && input == 'M') unless @x <= PLATEAU_BORDERS[0]
    self
  end

  def turn(input) # Move turning to another class called Directions?
    @direction = LEFT[@direction] if input == 'L'
    @direction = RIGHT[@direction] if input == 'R'
    self
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

  def return_coordinates
    "Rover co-ordinates are #{@x}, #{@y} facing #{@direction}"
  end
end

# Have a command method? So if input is M, R OR L it moves, turns right/left.

# the lower-left coordinates of the plateau are 0,0.
# the upper-right coordinates of the plateau are 5,5.
