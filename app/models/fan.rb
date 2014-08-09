class Fan < ActiveRecord::Base
  attr_accessible :name

  has_many :payments
  has_many :artists, :through => :albums
end
