class Barracks

  attr_reader :gold, :food
  
  def initialize
    @gold = 1000
    @food = 80
  end



  def gold
    @gold = 1000
  end

  def food
    @food = 80
  end

  def can_train_footman?
    gold >= Footman::GOLD_COST && food >= Footman::FOOD_COST
  end

  def train_footman
    if can_train_footman?
      @gold -= Footman::GOLD_COST 
      @food -= Footman::FOOD_COST
      Footman.new
    end
  end

  def can_train_peasant?
    gold >= PEASANT::GOLD_COST && food >= PEASANT::FOOD_COST
  end

  def train_peasant
    if can_train_peasant?
      @gold -= PEASANT::GOLD_COST
      @food -= PEASANT::FOOD_COST
      Peasant.new
    end
  end

end
