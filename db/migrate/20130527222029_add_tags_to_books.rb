class AddTagsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :tags, :string, array: true, :limit => 20
  end
end
