class Artist < ActiveRecord::Base
  attr_accessible :name, :website

  has_many :albums
  has_many :songs
  has_many :payments
  has_many :fans, :through => :payments
end
