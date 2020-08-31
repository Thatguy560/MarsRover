require 'Rover'

describe Rover do
  let(:rover) { Rover.new(x, y, direction) }

  it 'will let you create a new rover at any point with any given co-ordinates and direction.' do
    rover = Rover.new(1, 2, 'N')
    expect(rover.x).to eq 1
    expect(rover.y).to eq 2
    expect(rover.direction).to eq 'N'
  end

  context 'For when the rover is facing North' do
    it "will move one position in that direction if input is 'M' and direction is 'N'." do
      rover = Rover.new(4, 1, 'N')
      rover.move('M')
      expect(rover.y).to eq 2
    end

    it "won't let you move any further past the North plateau border" do
      rover = Rover.new(1, 3, 'N')
      10.times do
        rover.move("M")
      end
      expect(rover.y).to eq Rover::PLATEAU_BORDERS[1]
    end
  end

  context 'For when the rover is facing East' do
    it "will move one position in that direction if input is 'M' and direction is 'E'." do
      rover = Rover.new(1, 2, 'E')
      rover.move('M')
      expect(rover.x).to eq 2
    end

    it "won't let you move any further past the East plateau border" do
      rover = Rover.new(3, 1, 'E')
      10.times do
        rover.move("M")
      end
      expect(rover.x).to eq Rover::PLATEAU_BORDERS[1]
    end
  end

  context 'For when the rover is facing South' do
    it "will move one position in that direction if input is 'M' and direction is 'S'." do
      rover = Rover.new(2, 4, 'S')
      rover.move('M')
      expect(rover.y).to eq 3
    end

    it "won't let you move any further past the South plateau border" do
      rover = Rover.new(1, 3, 'S')
      10.times do
        rover.move("M")
      end
      expect(rover.y).to eq Rover::PLATEAU_BORDERS[0]
    end
  end

  context 'For when the rover is facing West' do
    it "will move one position in that direction if input is 'M' and direction is 'W'." do
      rover = Rover.new(4, 2, 'W')
      rover.move('M')
      expect(rover.x).to eq 3
    end

    it "won't let you move any further past the West plateau border" do
      rover = Rover.new(3, 1, 'W')
      10.times do
        rover.move("M")
      end
      expect(rover.x).to eq Rover::PLATEAU_BORDERS[0]
    end
  end

  it "will allow you to check the rover's current position at any given time." do
    rover = Rover.new(4, 4, 'S')
    expect(rover.to_s).to eq '4 4 S'
  end
end
