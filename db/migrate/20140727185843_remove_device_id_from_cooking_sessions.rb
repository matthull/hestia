class RemoveDeviceIdFromCookingSessions < ActiveRecord::Migration
  def change
    remove_column :cooking_sessions, :device_id
  end
end
