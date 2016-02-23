class RemoveNameFromChessPieces < ActiveRecord::Migration
  def change
  	remove_column :chess_pieces, :name 
  end
end
