require "rails_helper"

RSpec.describe ChessPiece do
  describe "#horizontal_move?" do
     context "given a piece at [4, 4]" do
       let(:ChessPiece) {ChessPiece.create(position_x: 4, position_y: 4)}
       it "will return true when trying to move to [5,4]" do
        expect(ChessPiece.horizontal_move?(4,4)).to be_truthy
       end
     end
   end
end

RSpec.describe ChessPiece do
  describe "#vertical_move?" do
     context "given a piece at [4, 4]" do
       let(:ChessPiece) {ChessPiece.create(position_x: 4, position_y: 4)}
       it "will return true when trying to move to [4,6]" do
        expect(ChessPiece.vertical_move?(6,4)).to be_falsey
       end
     end
   end
end