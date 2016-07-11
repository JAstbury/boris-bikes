require_relative 'docking_station'

class Van
attr_reader :broken_bikes, :fixed_bikes

def initialize
  @broken_bikes = []
  @fixed_bikes = []
end

def takes_broken_bikes(station)
    @broken_bikes = station.bikes.select {|bike| bike.working? == false }
    station.bikes.delete_if {|bike| broken_bikes.include?(bike) }
end

def drops_off_broken_bikes(garage)
  broken_bikes.each {|bike| garage.bikes << bike}
  empty_van
end

def empty_van
  @broken_bikes = []
  @fixed_bikes = []
end

def accepts_fixed_bikes(garage)
  @fixed_bikes = garage.bikes.select {|bike| bike.working? == true}
  garage.bikes.delete_if {|bike| fixed_bikes.include?(bike) }
end

def drops_off_fixed_bikes(station)
  @fixed_bikes.each {|bike| station.bikes << bike}
  empty_van
end

end
