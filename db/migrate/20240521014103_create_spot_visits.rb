class CreateSpotVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :spot_visits do |t|
      t.time :time
      t.references :spot_date, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
