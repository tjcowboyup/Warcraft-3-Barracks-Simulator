class Unit
  attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(ap)
    @health_points -= (ap)
  end

  def attack!(enemy)
    enemy.damage(self.attack_power) unless enemy.dead? || self.dead?
  end

  def dead?
    health_points <= 0 ? true : false
  end
end
