class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :gender
      t.float :amount
      t.string :location
      t.string :user_id
      t.string :response

      t.timestamps
    end
  end
end
