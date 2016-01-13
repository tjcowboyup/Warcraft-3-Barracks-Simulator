require_relative 'spec_helper'

describe Unit do
   before :each do
    @unit = Unit.new(100, 100)
end

  it "should be dead if health_points is 0 " do
    expect(@unit).to receive(:health_points).and_return(0)
    expect(@unit.dead?).to be true
  end

  it "should be dead if health_points is -10 " do
    expect(@unit).to receive(:health_points).and_return(-10)
    expect(@unit.dead?).to be true
  end

  it "should not be dead if health_points is greater than 0 " do
    expect(@unit).to receive(:health_points).and_return(10)
    expect(@unit.dead?).to be false
  end

end
