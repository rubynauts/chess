class CreateChessPieces < ActiveRecord::Migration
  def change
    create_table :chess_pieces do |t|
      t.string :name
      t.string :color
      t.integer :poisition_x
      t.integer :position_y

      t.timestamps
    end
  end
end
