require './lib/docking_station.rb'

describe DockingStation do
  it { should respond_to(:release_bike) }

  # it "release working bikes" do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "show bike in dock" do
    bike = Bike.new
    #not shore what this line is doing
    subject.dock(bike)
    expect(subject.bike).to eq bike

  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe "#release_bike" do
    it "raise an error when there is not bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

 describe '#dock' do
   it 'raises an error when full' do
     subject.dock(Bike.new)
     expect {subject.dock Bike.new}. to raise_error 'Docking station full'
    end

 end

end
