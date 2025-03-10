class AddLocationToPatients < ActiveRecord::Migration[7.1]
  def change
    add_column :patients, :location, :string
  end
end
