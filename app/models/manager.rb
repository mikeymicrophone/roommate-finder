class Manager < ActiveRecord::Base
  acts_as_authentic
  has_many :chores
end