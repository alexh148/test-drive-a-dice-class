require 'dice'

describe Dice do

  describe '#roll' do
    before(:each) do
      srand(6)
      @dice = Dice.new
    end

    it { is_expected.to respond_to(:roll).with(1).argument }

    it 'should return a random number between 1 and 6' do
      expect(@dice.roll(1)).to eq "You rolled a 3"
    end

    it 'should return 2 random numbers between 1 and 6 and the total' do
      expect(@dice.roll(2)).to eq "You rolled a total of 5 [3, 2]"
    end

    it 'should return 3 random numbers between 1 and 6 and the total' do
      expect(@dice.roll(3)).to eq "You rolled a total of 9 [3, 2, 4]"
    end

  end

end
