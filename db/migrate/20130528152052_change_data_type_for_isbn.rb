class ChangeDataTypeForIsbn < ActiveRecord::Migration
  def up
    change_column :books, :isbn, :bigint
  end

  def down
    change_column :books, :isbn, :int
  end
end
