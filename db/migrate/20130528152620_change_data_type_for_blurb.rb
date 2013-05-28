class ChangeDataTypeForBlurb < ActiveRecord::Migration
  def up
    change_column :books, :blurb, :text
  end

  def down
    change_column :books, :blurb, :string
  end
end
