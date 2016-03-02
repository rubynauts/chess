class Game < ActiveRecord::Base
  has_many :matches
  has_many :users, through: :matches
  has_many :chess_pieces


  def piece_in_square?(x,y)
    chess_pieces.find_by(position_x: x, position_y: y)
  end
end
