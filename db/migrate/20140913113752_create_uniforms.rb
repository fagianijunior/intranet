class CreateUniforms < ActiveRecord::Migration
  def change
    create_table :uniforms do |t|
      t.references :uniform_piece_type, index: true
      t.references :uniform_piece_group, index: true
      t.date :entry
      t.date :expiration
      t.references :user, index: true

      t.timestamps
    end
  end
end
