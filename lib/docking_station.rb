# The docking station for bikes in the Boris Bike project.
require_relative "bike"
class DockingStation

  attr_reader :bike

  def dock(bike)
    fail "Docking station full" if @bike
    @bike = bike
  end


  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

end
