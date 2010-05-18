class Room < ActiveRecord::Base
  belongs_to :unit
  has_many :renters
  has_many :payments
  
  def renter
    renters.last
  end
end