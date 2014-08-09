class Payment < ActiveRecord::Base
  attr_accessible :amount, :artist

  belongs_to :artist
  belongs_to :fan
end
