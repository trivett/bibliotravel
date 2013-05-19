class AddCityIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :city, :references
  end
end
