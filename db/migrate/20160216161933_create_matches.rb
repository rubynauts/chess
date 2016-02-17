class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :game_id
      t.integer :user_id

      t.timestamps
    end
  end
end
