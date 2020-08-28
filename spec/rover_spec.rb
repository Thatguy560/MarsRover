require 'Rover'

describe Rover do
  let(:rover) { Rover.new(x, y, direction) }

  it 'will let you create a new rover at any point with any given co-ordinates' do
    rover = Rover.new(1, 2, 'N')
    expect(rover.x).to eq 1
    expect(rover.y).to eq 2
    expect(rover.direction).to eq 'N'
  end

  it "will move one position to the right if action is 'M' and direction is 'E'." do
    rover = Rover.new(1, 2, 'E')
    rover.move_east('M')
    expect(rover.x).to eq 2
  end

  it "will inform you if it can't travel in the east direction when it's not facing east" do
    rover = Rover.new(1, 2, 'N')
    expect { rover.move_east('M') }.to raise_error "can't travel east, not in the correct direction."
  end

  # it "will raise "
end
