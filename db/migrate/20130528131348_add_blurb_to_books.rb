class AddBlurbToBooks < ActiveRecord::Migration
  def change
    add_column :books, :blurb, :string
  end
end
