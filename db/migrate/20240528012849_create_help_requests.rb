class CreateHelpRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :help_requests do |t|
      t.references :asker, null: false, foreign_key: { to_table: :users }
      t.references :helper, foreign_key: { to_table: :users }
      t.references :spot_date, null: false, foreign_key: true
      t.string :asker_comment
      t.string :helper_comment
      t.string :request_status, null: false, default: 'Pending'

      t.timestamps
    end
  end
end
