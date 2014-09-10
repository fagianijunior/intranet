class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts do |t|
      t.references :user, index: true
      t.references :contacttype, index: true
      t.string :contact

      t.timestamps
    end
  end
end
