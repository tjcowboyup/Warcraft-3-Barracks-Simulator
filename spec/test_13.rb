require_relative 'spec_helper'

describe Unit do
  describe "#attack!" do
   before :each do
    @unit = Unit.new(100, 100)
    @enemy = Unit.new(100, 100)
  end 

  it "cannot attack another unit if it is dead" do
    expect(@unit).to receive(:dead?).and_return true
    @unit.attack!(@enemy)
    expect(@enemy.health_points).to eq(100)
  end
  
  it "cannot attack another unit if enemy is dead" do
    expect(@enemy).to receive(:dead?).and_return true
    @unit.attack!(@enemy)
    expect(@enemy.health_points).to eq(100)
    end
  end

end
