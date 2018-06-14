# The docking station for bikes in the Boris Bike project.
require_relative "bike"
class DockingStation
  attr_reader :bike

  def initialize
    @bike = []

  end

  def dock(bike)
    fail "Docking station full" if @bike.count >= 20
    @bike << bike
  end


  def release_bike
    fail "No bikes available" if @bike.empty?
    @bike.pop
  end

end
