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
      if (@pins.at(roll) + @pins.at(roll + 1)) == 10
        score += 10 + @pins.at(roll + 2)
        roll += 2
      else
        score += @pins.at(roll) + @pins.at(roll + 1)
        roll += 2
      end
    end

    score
  end

  private

  def is_space(roll)

  end
end