<<<<<<< HEAD
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
=======
require 'bike.rb'

describe Bike do
  it { is_expected.to respond_to :working? }

  describe '#report' do
    it 'changes bike to broken' do
      bike = Bike.new
      bike.report
      expect(bike).not_to be_working
    end
>>>>>>> day-4
  end
end
