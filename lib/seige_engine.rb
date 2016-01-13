class Seige_engine < Unit

  GOLD_COST = 200
  LUMBER_COST = 60
  FOOD_COST = 3
  
  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
      enemy.damage(attack_power * 2)
    elsif enemy.is_a? Seige_engine
      super(enemy)
    end
  end

end
