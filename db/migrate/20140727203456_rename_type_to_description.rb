class RenameTypeToDescription < ActiveRecord::Migration
  def change
    rename_column :readings, :type, :description
    rename_column :sensors, :type, :description
  end
end
