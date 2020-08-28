# require 'Roversposition'
# require 'Coordinates'

# describe RoversPosition do
#   describe '#command' do
#     context 'for when rover is facing north.' do
#       it "will turn 90 degrees to the right and face east if you type in 'R'" do
#         coordinates = Coordinates.new(3, 3, 'N')
#         RoversPosition.new(coordinates).command('R')
#         expect(coordinates[0].x).to eq(3)
#         expect(coordinates[0].y).to eq(3)
#         expect(coordinates[0].direction).to eq('E')
#       end
#     end
#   end
# end
