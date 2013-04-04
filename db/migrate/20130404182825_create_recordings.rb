class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.integer :band_id, :null => false
      t.integer :single_id, :null => false
      t.datetime :release_date

      t.timestamps
    end

    add_index :recordings, :band_id
    add_index :recordings, :single_id
  end
end
