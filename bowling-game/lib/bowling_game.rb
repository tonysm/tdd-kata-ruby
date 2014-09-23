class BowlingGame
  def initialize
    @pins = []
  end

  def roll(pins)
    @pins.push(pins)
  end

  def score
    frames = 10
    score = 0
    roll = 0

    for frame in 1..frames do
      if is_spare(roll)
        score += 10 + get_spare_bonus(roll)
        roll += 2
      else
        score += get_default_bonus(roll)
        roll += 2
      end
    end

    score
  end

  private

  def get_default_bonus(roll)
    @pins.at(roll) + @pins.at(roll + 1)
  end

  def get_spare_bonus(roll)
    @pins.at(roll + 2)
  end

  def is_spare(roll)
    (@pins.at(roll) + @pins.at(roll + 1)) == 10
  end

end