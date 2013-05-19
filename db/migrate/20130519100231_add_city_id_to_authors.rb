class AddCityIdToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :city_id, :integer
  end
end
