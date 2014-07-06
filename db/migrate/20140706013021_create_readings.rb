class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.datetime :taken_at
      t.float :value

      t.timestamps
    end
  end
end
