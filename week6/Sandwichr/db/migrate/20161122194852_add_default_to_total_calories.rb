class AddDefaultToTotalCalories < ActiveRecord::Migration[5.0]
  def change
  		change_column :sandwiches, :total_calories, :integer, default: 0
  end
end
