require 'bike'

describe Bike do
  it 'responds to working? method' do
    expect(Bike.new).to respond_to(:working?)
  end
  it 'it is working' do
    bicycle = Bike.new
    expect(bicycle.working?).to eq true
  end
  it 'is an instance of Bike' do
    expect(subject).to be_instance_of Bike
  end
end
