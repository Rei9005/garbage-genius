class AddCordinatesToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :latitude, :float
    add_column :spots, :longitude, :float
    remove_column :spots, :lat, :float
    remove_column :spots, :lng, :float
  end
end
