class AddCookingSessionIdToReading < ActiveRecord::Migration
  def change
    add_column :readings, :cooking_session_id, :integer
  end
end
