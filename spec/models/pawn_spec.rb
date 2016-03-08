RSpec.describe Pawn do
	describe "#valid_move?" do
		context "given piece at [0,1]" do 
			let(:pawn) {Pawn.create(position_x: 0 , position_y: 1)}
			it "will return true when trying to move to [0,3]" do
				expect(pawn.valid_move?(0,3)).to be_truthy
			end
			it "will return false when trying to move to [0,5]" do
				expect(pawn.valid_move?(0,5)).to be_falsey
			end
			it "will return false when trying to move to [1,1]" do
				expect(pawn.valid_move?(1,1)).to be_falsey
			end
		end
	end
end