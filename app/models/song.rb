class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title

  belongs_to :artist
  belongs_to :album
end
