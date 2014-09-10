class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branch
      t.string :address
      t.references :city, index: true
      t.references :state, index: true

      t.timestamps
    end
  end
end
