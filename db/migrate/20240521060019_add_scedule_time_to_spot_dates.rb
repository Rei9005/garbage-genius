class AddSceduleTimeToSpotDates < ActiveRecord::Migration[7.1]
  def change
    add_column :spot_dates, :schedule_time, :time
  end
end
