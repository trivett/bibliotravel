class RemoveCityFromBooks < ActiveRecord::Migration

  def up
    remove_column :books, :city
  end

  def down
    add_column :books, :city, :string
  end
end
