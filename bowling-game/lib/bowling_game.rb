class BowlingGame
  def initialize
    @pins = []
  end

  def roll(pins)
    @pins.push(pins)
  end

  def score
    @pins.reduce(:+)
  end
end