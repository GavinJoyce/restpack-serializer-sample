class Album < ActiveRecord::Base
  attr_accessible :title, :year, :artist

  belongs_to :artist
  belongs_to :fan
  has_many :songs
end
