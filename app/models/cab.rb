class Cab < ApplicationRecord
  validates :registration_number , :number_of_seats , presence: true
  validates :number_of_seats, numericality: { message: "Enter valid number" }
  has_many :rides
end
