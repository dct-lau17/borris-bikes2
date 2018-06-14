# The docking station for bikes in the Boris Bike project.
require_relative "bike"

class DockingStation
  attr_reader :capacity
  
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "Docking station full" if full?
    bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes.pop
  end


private

attr_reader :bikes

  def full?
     bikes.count >= capacity
  end

  def empty?
     bikes.empty?
  end

end
