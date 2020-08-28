require_relative 'Coordinates'
class RoversPosition # < Coordinates
  # attr_accessor :command, :coordinates

  LOWERX = 0
  UPPERX = 5
  LOWERY = 0
  UPPERY = 5

  def initialize(coordinates)
    # super(x, y, direction)
    # @command = command
    @coordinates = coordinates
  end

  def command(action)
    @coordinates.each do |coordinate|
      next unless north(coordinate)

      # action = coordinate.direction = ('R' ? 'E' : 'N')
      coordinate.direction = if action == 'R'
                               'E'
                             else
                               'N'
                             end
    end

    def north(coordinate)
      coordinate.direction == 'N'
    end

    def east(coordinate)
      coordinate.direction == 'E'
    end

    def south(coordinate)
      coordinate.direction == 'S'
    end

    def west(coordinate)
      coordinate.direction == 'W'
    end
  end
end
