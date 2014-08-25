class AddLastReadingToCookingSessions < ActiveRecord::Migration
  def change
    add_column :cooking_sessions, :last_reading_at, :datetime
  end
end
