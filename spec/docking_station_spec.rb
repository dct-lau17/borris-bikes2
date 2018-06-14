require 'docking_station'

describe DockingStation do

described_class.send(:public, *described_class.private_instance_methods)

  it { should respond_to(:release_bike) }

  # it "release working bikes" do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to include bike
  end

  it "show bike in dock" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include bike # need check
  end

  it "has a default capacity" do
     expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
   end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

      it "raise an error when there is not bikes available" do
        expect { subject.release_bike }.to raise_error "No bikes available"
      end
  end


 describe "#dock" do
   it "raises an error when full" do
     subject.capacity.times { subject.dock Bike.new }
     expect {subject.dock Bike.new}.to raise_error 'Docking station full'
    end
 end

 describe "#initialize"do
   it 'has a variable capacity' do
     docking_station = DockingStation.new(50)
     50.times{docking_station.dock Bike.new}
     expect{docking_station.dock Bike.new}.to raise_error 'Docking station full'
   end
 end

 describe "#initialize" do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
    it " has default capacity" do
      described_class::DEFAULT_CAPACITY.times{
        subject.dock(bike)
      }
    expect { subject.dock(bike)}.to raise_error 'Docking station full'
    end
  end
end
