class AddColumnsToTrackingLog < ActiveRecord::Migration[7.0]
  def change
    add_column :tracking_logs, :referrer, :string
    add_column :tracking_logs, :url, :string
    add_column :tracking_logs, :language, :string
  end
end
