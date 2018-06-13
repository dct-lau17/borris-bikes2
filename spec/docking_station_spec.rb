require './lib/docking_station.rb'

describe DockingStation do
  it { should respond_to(:release_bike) }
end

describe DockingStation do
  it "release working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
