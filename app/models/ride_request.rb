class RideRequest < ApplicationRecord
  validates :destination , :status , presence: true
  belongs_to :user
  belongs_to :ride
end
