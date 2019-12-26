class Driver < ApplicationRecord
  validates :first_name , :last_name , :mobile_number ,:license_number , presence: true
  has_many :rides
end
