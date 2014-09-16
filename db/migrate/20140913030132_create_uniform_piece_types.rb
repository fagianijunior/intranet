class CreateUniformPieceTypes < ActiveRecord::Migration
  def change
    create_table :uniform_piece_types do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
    add_index :uniform_piece_types, :name
  end
end
