class Month < ActiveRecord::Base
  has_many :payments
  has_many :rooms, :through => :payments
  has_many :renters, :through => :payments
  
  def units
    rooms.map(&:unit).uniq
  end
  
  def self.current
    find_by_number_and_year Time.now.month, Time.now.year
  end
end