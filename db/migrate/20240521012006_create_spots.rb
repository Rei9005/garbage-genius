class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :address
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
