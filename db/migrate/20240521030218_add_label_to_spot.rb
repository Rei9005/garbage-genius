class AddLabelToSpot < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :label, :string
  end
end
