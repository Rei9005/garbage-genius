class AddAlertFlagsToUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :evening_alert, :evening_alert_at
    rename_column :users, :morning_alert, :morning_alert_at
    add_column :users, :evening_alert, :boolean
    add_column :users, :morning_alert, :boolean
  end
end
