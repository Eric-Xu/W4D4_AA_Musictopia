class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :title, :null => false
      t.datetime :release_date
      t.integer :artist_id, :null => false

      t.timestamps
    end

    add_index :singles, :artist_id
    add_index :singles, :title
  end
end
