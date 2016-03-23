class Game < ActiveRecord::Base
  has_many :matches
  has_many :users, through: :matches
  has_many :chess_pieces

  def piece_in_square?(x,y)
    chess_pieces.find_by(position_x: x, position_y: y)
  end

  def populate_board
    Rook.create(position_x: 0, position_y: 0, color: 'White', game_id: self.id)
    Rook.create(position_x: 7, position_y: 0, color: 'White', game_id: self.id)

    Knight.create(position_x: 1, position_y: 0, color: 'White', game_id: self.id)
    Knight.create(position_x: 6, position_y: 0, color: 'White', game_id: self.id)

    Bishop.create(position_x: 2, position_y: 0, color: 'White', game_id: self.id)
    Bishop.create(position_x: 5, position_y: 0, color: 'White', game_id: self.id)

    Queen.create(position_x: 3, position_y: 0, color: 'White', game_id: self.id)
    King.create(position_x: 4, position_y: 0, color: 'White', game_id: self.id)

    (0..7).each do |i|
      Pawn.create(position_x: i, position_y: 1, color: 'White', game_id: self.id)
    end

    Rook.create(position_x: 0, position_y: 7, color: 'Black', game_id: self.id)
    Rook.create(position_x: 7, position_y: 7, color: 'Black', game_id: self.id)

    Knight.create(position_x: 1, position_y: 7, color: 'Black', game_id: self.id)
    Knight.create(position_x: 6, position_y: 7, color: 'Black', game_id: self.id)

    Bishop.create(position_x: 2, position_y: 7, color: 'Black', game_id: self.id)
    Bishop.create(position_x: 5, position_y: 7, color: 'Black', game_id: self.id)

    Queen.create(position_x: 3, position_y: 7, color: 'Black', game_id: self.id)
    King.create(position_x: 4, position_y: 7, color: 'Black', game_id: self.id)

    (0..7).each do |i|
      Pawn.create(position_x: i, position_y: 6, color: 'Black', game_id: self.id)
    end
  end

end
