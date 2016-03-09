require "rails_helper"

RSpec.describe King do
	describe "#valid_move?" do
		context "give a King at [4,4]" do
			let(:game) {Game.create}
			let(:king) {King.create(position_x: 4, position_y: 4, game: game)}
			it "will return true when trying to move to [4,5]" do
				expect(king.valid_move?(4,5)).to be_truthy
			end
			it "will return true when trying to move to [5,4]" do
				expect(king.valid_move?(5,4)).to be_truthy 
			end
			it "will return true when trying to move to [5,5]" do
				expect(king.valid_move?(5,5)).to be_truthy
			end
			it "will return false when trying to move to [4,6]" do
				expect(king.valid_move?(4,6)).to be_falsey
			end
			it "will return false when trying to move to [6,4]" do
				expect(king.valid_move?(6,4)).to be_falsey
			end
			it "will return false when trying to move to [2,2]" do
				expect(king.valid_move?(2,2)).to be_falsey
			end
		end
	end
end