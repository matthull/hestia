class AddDeviceIdToCookingSession < ActiveRecord::Migration
  def change
    add_column :cooking_sessions, :device_id, :integer
  end
end
