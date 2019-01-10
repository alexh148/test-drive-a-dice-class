require 'dice'

describe Dice do

  describe '#roll' do

    it { is_expected.to respond_to(:roll).with(1).argument }

    it 'should return a random number between 1 and 6' do
      srand(6)
      dice = Dice.new
      expect(dice.roll(1)).to eq 3
    end

  end

end
