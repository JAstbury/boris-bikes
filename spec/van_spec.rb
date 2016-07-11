require 'docking_station'

describe Van do

  let(:station) { DockingStation.new }
  let(:garage) { Garage.new }

  it 'takes broken bikes from the docking station' do
    bike = double(:bike, :report => false, :working? => false)
    station.dock(bike)
    subject.takes_broken_bikes(station)
    expect(subject.broken_bikes.include?(bike)).to eq true
  end

  it 'drops off at garage' do
    bike = Bike.new
    bike.report
    station.dock(bike)
    subject.takes_broken_bikes(station)
    subject.drops_off_broken_bikes(garage)
    garage.fix_bikes
    subject.accepts_fixed_bikes(garage)
    subject.drops_off_fixed_bikes(station)
    expect(subject.fixed_bikes.include?(bike)).to eq false
  end

end
