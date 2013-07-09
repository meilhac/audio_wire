class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :numberTrack
      t.string :title
      t.string :genre
      t.string :artist
      t.string :album
      t.time :time

      t.timestamps
    end
  end
end
