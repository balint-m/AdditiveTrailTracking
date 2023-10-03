class CreateTrackingLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :tracking_logs do |t|
      t.string :ip_address
      t.string :device_name
      t.string :os

      t.timestamps
    end
  end
end
