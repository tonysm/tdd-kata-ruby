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
      if is_strike(roll)
        score += 10 + get_strike_bonus(roll)
        roll += 1
      elsif is_spare(roll)
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

  def is_strike(roll)
    @pins.at(roll) == 10
  end

  def get_strike_bonus(roll)
    @pins[roll + 1] + @pins[roll + 2]
  end

  def is_spare(roll)
    (@pins.at(roll) + @pins.at(roll + 1)) == 10
  end

  def get_spare_bonus(roll)
    @pins.at(roll + 2)
  end

  def get_default_bonus(roll)
    @pins.at(roll) + @pins.at(roll + 1)
  end

end