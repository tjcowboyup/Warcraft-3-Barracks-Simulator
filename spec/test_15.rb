require_relative 'spec_helper'

  describe Seige_engine do
    before :each do
      @seige_engine = Seige_engine.new
    end

    it "has 400 health_points" do
      expect(@seige_engine.health_points).to eq(400)
    end

      it "has 50 attack_power" do
      expect(@seige_engine.attack_power).to eq(50)
    end

  describe "#attack!"
    it "should do double the damage to barracks by its ap" do
      barracks = Barracks.new
      @seige_engine.attack!(barracks)
      expect(barracks.health_points).to eq(400)
    end

    it "should damage seige_engines by its ap" do
      target = Seige_engine.new
      @seige_engine.attack!(target)
      expect(target.health_points).to eq(350)
    end
    
    it "should not attack footman" do
      footman = Footman.new
      @seige_engine.attack!(footman)
      expect(footman.health_points).to eq(60)
    end    

    it "should not attack peasant" do
      peasant = Peasant.new
      @seige_engine.attack!(peasant)
      expect(peasant.health_points).to eq(35)
    end
  end
end
