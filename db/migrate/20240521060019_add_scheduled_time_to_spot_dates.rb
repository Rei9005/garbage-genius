class AddScheduledTimeToSpotDates < ActiveRecord::Migration[7.1]
  def change
    add_column :spot_dates, :scheduled_time, :time
  end
end
