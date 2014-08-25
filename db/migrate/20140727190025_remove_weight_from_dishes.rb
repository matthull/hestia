class RemoveWeightFromDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :weight
  end
end
