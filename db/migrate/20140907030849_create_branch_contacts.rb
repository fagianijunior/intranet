class CreateBranchContacts < ActiveRecord::Migration
  def change
    create_table :branch_contacts do |t|
      t.references :branch, index: true
      t.references :contacttype, index: true
      t.string :contact

      t.timestamps
    end
  end
end
