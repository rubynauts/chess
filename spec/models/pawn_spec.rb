RSpec.describe Pawn do
	describe "#valid_move?" do
		context "given white piece at [0,1]" do 
			let(:pawn) {Pawn.create(position_x: 0 , position_y: 1, color: 'White')}
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

	describe "#valid_move?" do
		context "given black piece at [3,6]" do 
			let(:pawn) {Pawn.create(position_x: 3 , position_y: 6, color: 'Black')}
			it "will return true when trying to move to [3,4]" do
				expect(pawn.valid_move?(3,4)).to be_truthy
			end
			it "will return false when trying to move to [3,2]" do
				expect(pawn.valid_move?(3,2)).to be_falsey
			end
			it "will return false when trying to move to [1,1]" do
				expect(pawn.valid_move?(1,1)).to be_falsey
			end
		end
	end
end