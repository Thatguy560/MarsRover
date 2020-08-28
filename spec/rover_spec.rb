require 'Rover'

describe Rover do
  let(:rover) { Rover.new(x, y, direction) }

  it 'will let you create a new rover at any point with any given co-ordinates' do
    rover = Rover.new(1, 2, 'N')
    expect(rover.x).to eq 1
    expect(rover.y).to eq 2
    expect(rover.direction).to eq 'N'
  end

  it
end
