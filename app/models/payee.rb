class Payee < ActiveRecord::Base
  has_many :bills
end