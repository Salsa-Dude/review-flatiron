
# A song belongs to an artist
# A song belongs to a genre

class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
      t.timestamps
    end
  end
end
