class PokerDice::Hand
  attr_reader :dices

  def initialize(dices)
    @dices = dices
  end

  def bust?
    !one_pair? && !two_pair?
  end

  def one_pair?
    pair_count == 1
  end

  def two_pair?
    pair_count == 2
  end

  def three_of_a_kind?
    triple_count == 1
  end

  private

  def dice_counts
    @dice_counts ||= Hash.new(0).tap do |result|
      dices.split(" ").each do |die|
        result[die] += 1
      end
    end
  end

  def pair_count
    dice_counts.values.select {|value| value == 2}.count
  end

  def triple_count
    dice_counts.values.select {|value| value == 3}.count
  end
end
