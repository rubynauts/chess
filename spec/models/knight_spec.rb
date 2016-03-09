RSpec.describe Knight do
  describe "#valid_move?" do
    context "given a piece at [2, 3]" do
      let(:knight) {Knight.create(position_x: 2, position_y: 3)}
      it "will return true when trying to move to [4,4]" do
        expect(knight.valid_move?(4,4)).to be_truthy
      end
      it "will return false when trying to move to [4,5]" do
        expect(knight.valid_move?(4,5)).to be_falsey
      end
    end
  end
end