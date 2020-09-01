require 'Rover'

describe Rover do

  it 'will let you create a new rover with any given co-ordinates and direction.' do
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

  context "For when the rover is facing East" do
    it "will move one position in that direction if input is 'M' and direction is 'E'." do
      rover = Rover.new(1, 2, 'E')
      rover.move('M')
      expect(rover.x).to eq 2
    end

    it "won't let you move any further past the East plateau border" do
      rover = Rover.new(3, 1, 'E')
      10.times do
        rover.move('M')
      end
      expect(rover.x).to eq Rover::PLATEAU_BORDERS[1]
    end
  end

  context "For when the rover is facing South" do
    it "will move one position in that direction if input is 'M' and direction is 'S'." do
      rover = Rover.new(2, 4, 'S')
      rover.move('M')
      expect(rover.y).to eq 3
    end

    it "won't let you move any further past the South plateau border" do
      rover = Rover.new(1, 3, 'S')
      10.times do
        rover.move('M')
      end
      expect(rover.y).to eq Rover::PLATEAU_BORDERS[0]
    end
  end

  context "For when the rover is facing West" do
    it "will move one position in that direction if input is 'M' and direction is 'W'." do
      rover = Rover.new(4, 2, 'W')
      rover.move('M')
      expect(rover.x).to eq 3
    end

    it "won't let you move any further past the West plateau border" do
      rover = Rover.new(3, 1, 'W')
      10.times do
        rover.move('M')
      end
      expect(rover.x).to eq Rover::PLATEAU_BORDERS[0]
    end
  end

  context "For when the rover is turning left" do
    it "will turn West when facing North" do
      rover = Rover.new(3, 3, 'N')
      rover.turn('L')
      expect(rover.direction).to eq 'W'
    end

    it "will turn North when facing East" do
      rover = Rover.new(3, 3, 'E')
      rover.turn('L')
      expect(rover.direction).to eq 'N'
    end

    it "will turn East when facing South" do
      rover = Rover.new(3, 3, 'S')
      rover.turn('L')
      expect(rover.direction).to eq 'E'
    end

    it "will turn South when facing West" do
      rover = Rover.new(3, 3, 'W')
      rover.turn('L')
      expect(rover.direction).to eq 'S'
    end
  end

  context "For when the rover is turning right" do
    it "will turn East when facing North" do
      rover = Rover.new(3, 3, 'N')
      rover.turn('R')
      expect(rover.direction).to eq 'E'
    end

    it "will turn South when facing East" do
      rover = Rover.new(3, 3, 'E')
      rover.turn('R')
      expect(rover.direction).to eq 'S'
    end

    it "will turn West when facing South" do
      rover = Rover.new(3, 3, 'S')
      rover.turn('R')
      expect(rover.direction).to eq 'W'
    end

    it "will turn North when facing West" do
      rover = Rover.new(3, 3, 'W')
      rover.turn('R')
      expect(rover.direction).to eq 'N'
    end
  end

  it "will allow you to check the rover's current position at any given time." do
    rover = Rover.new(4, 4, 'S')
    expect(rover.return_coordinates).to eq "Rover co-ordinates are 4, 4 facing S"
  end
end
