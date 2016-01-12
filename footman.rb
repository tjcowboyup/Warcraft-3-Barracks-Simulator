# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

GOLD_COST = 135
FOOD_COST = 2

# attr_accessor :health_points, :attack_power, :damage
  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)

    super(60, 10)
  end

  def attack!(enemy)
    amount = attack_power
    enemy.damage(amount)
  end

end
