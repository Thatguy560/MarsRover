class Rover
  attr_accessor :x, :y, :direction
  PLATEAU_BORDERS = [0, 5].freeze
  LEFT = {
    "N" => "W",
    "E" => "N",
    "S" => "E",
    "W" => "S",
  }.freeze

  RIGHT = {
    "N" => "E",
    "E" => "S",
    "S" => "W",
    "W" => "N",
  }.freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(input) # Add plateau constraints to seperate class called Plateau?
    @y += 1 if facing_north && moving(input) unless @y >= PLATEAU_BORDERS[1]
    @x += 1 if facing_east && moving(input) unless @x >= PLATEAU_BORDERS[1]
    @y -= 1 if facing_south && moving(input) unless @y <= PLATEAU_BORDERS[0]
    @x -= 1 if facing_west && moving(input) unless @x <= PLATEAU_BORDERS[0]
    return_coordinates
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

  def moving(input) # Change this to command method so if input is M OR R OR L.
    input == 'M'
  end

  def turn(input) # Move turning to another class called Directions?
    @direction = LEFT.fetch(@direction) if input == "L"
    @direction = RIGHT.fetch(@direction) if input == "R"
    "Rover is now facing #{@direction}"
  end

  def return_coordinates # Remove Method?
    "Current Rover co-ordinates are #{@x}, #{@y} facing #{@direction}"
  end
end
