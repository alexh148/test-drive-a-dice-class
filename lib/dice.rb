class Dice

  def initialize
    @total = []
  end

  def roll(n)
    @total = []
    n.times { score }
    return "You rolled a total of #{@total.sum} #{@total.to_s}" if n >= 2
    return "You rolled a #{@total.sum}" if n == 1
    "You rolled nothing..."
  end

  private

  def score
    @total << rand(1..6)
  end
end
