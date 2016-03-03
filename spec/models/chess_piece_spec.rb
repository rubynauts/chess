require "rails_helper"

RSpec.describe ChessPiece do
  describe "#horizontal_move?" do
    context "given a piece at [4, 4]" do
      let(:piece) {ChessPiece.create(position_x: 4, position_y: 4)}
      it "will return true when trying to move to [5,4]" do
        expect(piece.horizontal_move?(5,4)).to be_truthy
      end
      it "will return false when trying to move to [4,5]" do
        expect(piece.horizontal_move?(4,5)).to be_falsey
      end
    end
  end

  describe "#vertical_move?" do
    context "given a piece at [4, 4]" do
      let(:piece) {ChessPiece.create(position_x: 4, position_y: 4)}
      it "will return true when trying to move to [4,6]" do
        expect(piece.vertical_move?(4,6)).to be_truthy
      end
      it "will return false when trying to move to [5,4]" do
        expect(piece.vertical_move?(5,4)).to be_falsey
      end
    end
  end

  describe "#diagonal_move?" do
    context "given a piece at [4, 4]" do
      let(:piece) {ChessPiece.create(position_x: 4, position_y: 4)}
      it "will return false when trying to move to [4,6]" do
        expect(piece.diagonal_move?(4,6)).to be_falsey
      end
      it "will return true when trying to move to [5,5]" do
        expect(piece.diagonal_move?(5,5)).to be_truthy
      end
    end
  end

  describe "#is_obstructed?" do
    context "given a piece at [4, 4]" do
      let(:game) {Game.create}
      let(:piece) {ChessPiece.create(position_x: 4, position_y: 4, game: game)}
      let(:second_piece) {ChessPiece.create(position_x: 4, position_y: 6, game: game)}
      it "will return true when trying to move to [4,7]" do
        second_piece
        expect(piece.is_obstructed?(4,7)).to be_truthy
      end
      it "will return false when trying to move to [4,5]" do
        second_piece
        expect(piece.is_obstructed?(4,5)).to be_falsey
      end
    end
  end

  describe "#is_obstructed?" do
    context "given a piece at [4, 4]" do
      let(:game) {Game.create}
      let(:piece) {ChessPiece.create(position_x: 4, position_y: 4, game: game)}
      let(:second_piece) {ChessPiece.create(position_x: 6, position_y: 4, game: game)}
      it "will return true when trying to move to [7,4]" do
        second_piece
        expect(piece.is_obstructed?(7,4)).to be_truthy
      end
      it "will return false when trying to move to [5,4]" do
        second_piece
        expect(piece.is_obstructed?(5,4)).to be_falsey
      end
    end
  end

  

end