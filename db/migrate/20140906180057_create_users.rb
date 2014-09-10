class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :avatar
      t.references :gender, index: true
      t.date :birth_date
      t.string :address
      t.references :city, index: true
      t.references :state, index: true
      t.references :position, index: true
      t.references :branch, index: true
      t.boolean :active

      t.timestamps
    end
    add_index :users, :email
  end
end
