class Track < ActiveRecord::Base
  has_attached_file :song
  
  validates_attachment_size :song, :less_than => 10.megabytes

  attr_accessible :album, :artist, :genre, :numberTrack, :time, :title, :song
end
