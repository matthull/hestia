class AddTypeToReadings < ActiveRecord::Migration
  def change
    add_column :readings, :type, :string
  end
end
