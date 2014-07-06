class AddDishIdToCookingSessions < ActiveRecord::Migration
  def change
    add_column :cooking_sessions, :dish_id, :integer
  end
end
