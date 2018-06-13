# The docking station for bikes in the Boris Bike project.
require_relative "bike"
class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  

end
