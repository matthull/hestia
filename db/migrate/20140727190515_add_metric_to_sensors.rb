class AddMetricToSensors < ActiveRecord::Migration
  def change
    add_column :sensors, :metric, :string
  end
end
