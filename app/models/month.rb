class Month < ActiveRecord::Base
  has_many :payments
  
  def self.current
    find_by_number_and_year Time.now.month, Time.now.year
  end
end