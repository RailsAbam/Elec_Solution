class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :gender
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
