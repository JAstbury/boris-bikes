require 'docking_station'

describe 'DockingStation' do
it 'should respond to the method release_bike' do
  expect(DockingStation.new).to respond_to(:release_bike)
end
it 'release_bike method should create new instance of Bike class' do
  expect(DockingStation.new.release_bike).to be_instance_of Bike
  expect(DockingStation.new.release_bike.working?).to eq true
end

end
