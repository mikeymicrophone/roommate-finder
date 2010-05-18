class Renter < ActiveRecord::Base
  belongs_to :room
  has_many :payments
end