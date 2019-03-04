class PokerDice::Hand
  attr_reader :dices

  def initialize(dices)
    @dices = dices.split(" ")
  end

  def score
    case
    when one_pair?
      "one_pair"
    when two_pair?
      "two_pair"
    when three_of_a_kind?
      "three_of_a_kind"
    else
      "bust"
    end
  end

  private

  def bust?
    !one_pair? && !two_pair? && !three_of_a_kind?
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

  def dice_counts
    @dice_counts ||= Hash.new(0).tap do |result|
      dices.each do |die|
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
