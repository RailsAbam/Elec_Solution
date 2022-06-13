class CreateElecSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :elec_solutions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :state

      t.timestamps
    end
  end
end
