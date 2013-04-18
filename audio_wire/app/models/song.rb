class Song < ActiveRecord::Base
  attr_accessible :artist, :band, :category, :duration, :title
end
