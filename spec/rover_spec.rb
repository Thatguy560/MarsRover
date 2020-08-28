require 'Rover'

describe Rover do
  let(:rover) { Rover.new(x, y, direction) }

  it 'will let you create a new rover at any point with any given co-ordinates' do
    rover = Rover.new(1, 2, 'N')
    expect(rover.x).to eq 1
    expect(rover.y).to eq 2
    expect(rover.direction).to eq 'N'
  end

  context 'For when the rover is facing North' do
    it "will move one position in that direction if input is 'M' and direction is 'N'." do
      rover = Rover.new(4, 1, 'N')
      rover.move_north('M')
      expect(rover.y).to eq 2
    end

    it "will inform you if it can't travel in that direction when it's not facing north" do
      rover = Rover.new(1, 2, 'E')
      expect { rover.move_north('M') }.to raise_error "can't travel north, not in the correct direction."
    end
  end

  context 'For when the rover is facing South' do
    it "will move one position in that direction if input is 'M' and direction is 'S'." do
      rover = Rover.new(2, 4, 'S')
      rover.move_south('M')
      expect(rover.y).to eq 3
    end

    it "will inform you if it can't travel in that direction when it's not facing south" do
      rover = Rover.new(1, 2, 'W')
      expect { rover.move_south('M') }.to raise_error "can't travel south, not in the correct direction."
    end
  end

  context 'For when the rover is facing East' do
    it "will move one position in that direction if input is 'M' and direction is 'E'." do
      rover = Rover.new(1, 2, 'E')
      rover.move_east('M')
      expect(rover.x).to eq 2
    end

    it "will inform you if it can't travel in that direction when it's not facing east" do
      rover = Rover.new(1, 2, 'N')
      expect { rover.move_east('M') }.to raise_error "can't travel east, not in the correct direction."
    end
  end

  context 'For when the rover is facing West' do
    it "will move one position in that direction if input is 'M' and direction is 'W'." do
      rover = Rover.new(5, 2, 'W')
      rover.move_west('M')
      expect(rover.x).to eq 4
    end

    it "will inform you if it can't travel in that direction when it's not facing west" do
      rover = Rover.new(1, 2, 'S')
      expect { rover.move_west('M') }.to raise_error "can't travel west, not in the correct direction."
    end
  end

  it 'will raise an error if the correct command is given for moving.' do
    rover = Rover.new(2, 3, 'E')
    expect { rover.move_east('wrong input') }.to raise_error "can't travel, wrong input given."
  end
end
