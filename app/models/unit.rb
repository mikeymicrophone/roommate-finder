class Unit < ActiveRecord::Base
  has_many :rooms
  has_many :renters, :through => :rooms
end