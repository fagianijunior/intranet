class CreateUniformPieceGroups < ActiveRecord::Migration
  def change
    create_table :uniform_piece_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :uniform_piece_groups, :name
  end
end
