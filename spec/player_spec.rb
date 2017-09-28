require_relative '../lib/monopoly/player'
require_relative '../lib/monopoly/dice'

describe 'Player' do
  describe 'roll' do
    it 'uses two dice' do
      player = Cheater.new
      dice = SpiedDice.new
      player.use(dice)

      player.move()

      expect(dice).to have_been_rolled(2)
    end
  end

  class Cheater < Player
    def use(dice)
      @dice = dice
    end
  end

  class SpiedDice < SixSidedDice
    def initialize
      @times_rolled = 0
    end

    def roll
      @times_rolled += 1
    end

    def has_been_rolled?(times)
      @times_rolled == times
    end
  end
end

