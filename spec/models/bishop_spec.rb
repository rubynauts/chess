RSpec.describe Bishop do
  describe "#valid_move?" do
    context "given a piece at [1, 3]" do
      let(:bishop) {Bishop.create(position_x: 1, position_y: 3)}
      it "will return true when trying to move to [5,7]" do
        expect(bishop.valid_move?(5,7)).to be_truthy
      end
      it "will return false when trying to move to [4,5]" do
        expect(bishop.valid_move?(4,5)).to be_falsey
      end
    end
  end
end