class Chore < ActiveRecord::Base
  belongs_to :manager
  belongs_to :unit
end