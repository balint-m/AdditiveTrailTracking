class AddLocationToTracking < ActiveRecord::Migration[7.0]
  def change
    add_column :tracking_logs, :location, :string
  end
end
