class AddInfoToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :line_id, :string
    add_column :users, :address, :string
    add_reference :users, :spot, foreign_key: true
    add_column :users, :longtitude, :float
    add_column :users, :latitude, :float
    add_column :users, :evening_alert, :time
    add_column :users, :morning_alert, :time
  end
end
