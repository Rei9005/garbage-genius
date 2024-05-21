class CreateSpotDates < ActiveRecord::Migration[7.1]
  def change
    create_table :spot_dates do |t|
      t.date :date
      t.string :collection_type
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
