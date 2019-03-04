RSpec.describe PokerDice::Hand do
  describe "#score" do
    it "returns correct score for bust" do
      hand = described_class.new("A K Q J 9")
      expect(hand.score).to eq "bust"
    end

    it "returns correct score for one pair" do
      hand = described_class.new("10 10 K Q 9")
      expect(hand.score).to eq "one_pair"
    end

    it "returns correct score for two pair" do
      hand = described_class.new("10 10 K K 9")
      expect(hand.score).to eq "two_pair"
    end

    it "returns correct score for three of a kind" do
      hand = described_class.new("10 K K K 9")
      expect(hand.score).to eq "three_of_a_kind"
    end

    xit "returns correct score for straight" do
      hand = described_class.new("10 K Q J A")
      expect(hand.score).to eq "straight"
    end

    xit "returns correct score for full house" do
      hand = described_class.new("K K K J J")
      expect(hand.score).to eq "full_house"
    end

    xit "returns correct score for " do
      hand = described_class.new("10 10 10 10 A")
      expect(hand.score).to eq "four_of_a_kind"
    end

    xit "returns true for five of a kind hand" do
      hand = described_class.new("J J J J J")
      expect(hand.score).to eq "five_of_a_kind"
    end
  end
end
