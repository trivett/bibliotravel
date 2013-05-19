class AddAuthorIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author, :references
  end
end
