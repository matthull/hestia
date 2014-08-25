class AddMetricToReadings < ActiveRecord::Migration
  def change
    add_column :readings, :metric, :string
  end
end
