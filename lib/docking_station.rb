# The docking station for bikes in the Boris Bike project.
require_relative "bike"
class DockingStation

  def release_bike
    Bike.new
  end

end
