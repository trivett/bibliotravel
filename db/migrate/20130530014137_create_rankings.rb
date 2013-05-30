class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.string :source
      t.integer :ranking
      t.references :book

      t.timestamps
    end
    add_index :rankings, :book_id
  end
end
