require "rails_helper"

RSpec.describe Rook do
  describe "#valid_move?" do
    context "given a Rook at [0,0]" do
      let(:game) {Game.create}
      let(:rook) {Rook.create(position_x: 0, position_y: 0, game: game)}
      it "will return true when trying to move to [0,6]" do
        expect(rook.valid_move?(0,6)).to be_falsey
      end
      it "will return false when trying to move to [4,5]" do
        expect(rook.valid_move?(4,5)).to be_falsey
      end
    end
  end
end