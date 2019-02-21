RSpec.describe PokerDice::Hand do
  describe "#bust?" do
    it "returns true for bust hand" do
      hand = described_class.new("A K Q J 9")
      expect(hand.bust?).to be true
    end
  end

  describe "#one_pair?" do
    it "returns true for two pair hand" do
      hand = described_class.new("10 10 K Q 9")
      expect(hand.one_pair?).to be true
    end
  end

  describe "#two_pair?" do
    it "returns true for two pair hand" do
      hand = described_class.new("Q Q 9 9 A")
      expect(hand.two_pair?).to be true
    end
  end

  describe "#three_of_a_kind?" do
    it "returns true for three of a kind hand" do
      hand = described_class.new("9 9 9 K J")
      expect(hand.three_of_a_kind?).to be true
    end
  end

  xdescribe "#straight?" do
    it "returns true for straight hand" do
      hand = described_class.new("A K Q J 10")
      expect(hand.straight?).to be true
    end
  end

  xdescribe "#full_house?" do
    it "returns true for full house hand" do
      hand = described_class.new("K K K 9 9")
      expect(hand.full_house?).to be true
    end
  end

  xdescribe "#four_of_a_kind?" do
    it "returns true for four of a kind hand" do
      hand = described_class.new("10 10 10 10 A")
      expect(hand.four_of_a_kind?).to be true
    end
  end

  xdescribe "#five_of_a_kind?" do
    it "returns true for five of a kind hand" do
      hand = described_class.new("J J J J J")
      expect(hand.five_of_a_kind?).to be true
    end
  end
end
