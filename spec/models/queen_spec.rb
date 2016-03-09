require "rails_helper"

RSpec.describe Queen do 
	describe "#valid_move?" do
		context "given a Queen at [4,4]" do
			let(:game) {Game.create}
			let(:queen) {Queen.create(position_x: 4, position_y: 4, game: game)}
			it "will return true when trying to move to [4,7]" do
				expect(queen.valid_move?(4,7)).to be_truthy
			end
			it "will return true when trying to move to [7,4]" do
				expect(queen.valid_move?(7,4)).to be_truthy
			end
			it "will return true when trying to move to [7,7]" do
				expect(queen.valid_move?(7,7)).to be_truthy
			end
			it "will return false when trying to move to [5,2]" do
				expect(queen.valid_move?(5,2)).to be_falsey
			end
		end
	end
end