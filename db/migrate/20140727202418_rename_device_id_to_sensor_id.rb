class RenameDeviceIdToSensorId < ActiveRecord::Migration
  def change
    rename_column :readings, :device_id, :sensor_id
  end
end
