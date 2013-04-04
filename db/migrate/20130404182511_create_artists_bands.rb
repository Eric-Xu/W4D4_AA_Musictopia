class CreateArtistsBands < ActiveRecord::Migration
  def change
    create_table :artists_bands do |t|
      t.integer :artist_id, :null => false
      t.integer :band_id, :null => false

      t.timestamps
    end

    add_index :artists_bands, :artist_id
    add_index :artists_bands, :band_id
  end
end
