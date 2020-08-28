require 'Coordinates'

describe Coordinates do
  it 'rover can start with any given co-ordinates and a direction.' do
    coordinates = Coordinates.new(3, 3, 'E')
    expect(coordinates.x).to eq 3
    expect(coordinates.y).to eq 3
    expect(coordinates.direction).to eq 'E'
  end

  it 'will allow you to check the current position of the rover at any given time.' do
    coordinates = Coordinates.new(4, 1, 'W')
    expect(coordinates.get_current_position).to eq '4 : 1 : W'
  end
end
