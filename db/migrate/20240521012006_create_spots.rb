class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :address
      t.float :latitude
      t.float :longtitude

      t.timestamps
    end
  end
end
