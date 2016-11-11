class AddStuffToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :name, :string
    add_column :concerts, :venue, :string
    add_column :concerts, :city, :string
    add_column :concerts, :date, :datetime
    add_column :concerts, :price, :integer
    add_column :concerts, :description, :string
  end
end
