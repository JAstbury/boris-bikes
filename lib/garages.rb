class Garage
attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def fix_bikes
    @bikes.each {|bike| bike.working = true}
  end

end
