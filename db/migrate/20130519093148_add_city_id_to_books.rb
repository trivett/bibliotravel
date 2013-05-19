class AddCityIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :city_id, :integer
  end
end
