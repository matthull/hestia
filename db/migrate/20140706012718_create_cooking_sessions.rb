class CreateCookingSessions < ActiveRecord::Migration
  def change
    create_table :cooking_sessions do |t|
      t.datetime :first_reading_at
      t.string :name

      t.timestamps
    end
  end
end
