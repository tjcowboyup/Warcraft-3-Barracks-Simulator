class Barracks

  attr_reader :health_points, :gold, :food, :lumber
  
  def initialize
    @health_points = 500
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  # def gold
  #   @gold = 1000
  # end

  # def food
  #   @food = 80
  # end

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
    gold >= Peasant::GOLD_COST && food >= Peasant::FOOD_COST
  end

  def train_peasant
    if can_train_peasant?
      @gold -= Peasant::GOLD_COST
      @food -= Peasant::FOOD_COST
      Peasant.new
    end
  end

  def damage(ap)
    @health_points -= ap
  end

end
