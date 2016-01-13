require_relative 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  it "has 500 HP" do
    expect(@barracks.health_points).to eq(500)
  end

describe Footman do
  describe "#attack!" do
    it "should damage barracks with half of its ap" do  
      footman = Footman.new
      barracks = Barracks.new
      footman.attack!(barracks)
      expect(barracks.health_points).to eq(495)
    end
  end

end
