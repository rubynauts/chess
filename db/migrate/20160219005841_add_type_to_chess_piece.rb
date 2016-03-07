class AddTypeToChessPiece < ActiveRecord::Migration
  def change
    add_column :chess_pieces, :type, :string
  end
end
