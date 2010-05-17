class Room < ActiveRecord::Base
  belongs_to :unit
  has_many :renters
  
  def renter
    renters.last
  end
end