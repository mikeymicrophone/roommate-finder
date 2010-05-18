class Payment < ActiveRecord::Base
  belongs_to :renter
  belongs_to :room
  belongs_to :month
end