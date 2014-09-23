require 'rspec'
require_relative '../lib/bowling_game'

describe 'BowlingGame' do

  before(:each) do
    @bowling = BowlingGame.new
  end

  it 'scores a gutter game as zero' do
    roll_times 20, 0
    assert_score 0
  end

  it 'score the sum of all pins for a simple game' do
    roll_times 20, 1
    assert_score 20
  end

  private

  def roll_times(times, pins)
    for i in 1..times
      @bowling.roll pins
    end
  end

  def assert_score(expected)
    expect(@bowling.score()).to eq(expected)
  end
end