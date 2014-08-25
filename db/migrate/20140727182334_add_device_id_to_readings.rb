class AddDeviceIdToReadings < ActiveRecord::Migration
  def change
    add_column :readings, :device_id, :integer
  end
end
