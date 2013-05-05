class Artist < ActiveRecord::Base
  attr_accessible :name, :website

  has_many :albums
  has_many :songs
end
